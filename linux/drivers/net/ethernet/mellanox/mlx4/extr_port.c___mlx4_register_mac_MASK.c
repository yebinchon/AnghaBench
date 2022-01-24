#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u8 ;
typedef  int u64 ;
struct mlx4_mac_table {int* refs; int* is_dup; scalar_t__ total; scalar_t__ max; int /*<<< orphan*/  mutex; void** entries; } ;
struct mlx4_port_info {struct mlx4_mac_table mac_table; } ;
struct mlx4_dev {int dummy; } ;
struct TYPE_2__ {struct mlx4_port_info* port; } ;

/* Variables and functions */
 int ENOSPC ; 
 int MLX4_MAC_MASK ; 
 int MLX4_MAC_VALID ; 
 int MLX4_MAX_MAC_NUM ; 
 int /*<<< orphan*/  SINGLE_DEPTH_NESTING ; 
 int FUNC0 (void*) ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx4_dev*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx4_dev*,char*,unsigned long long) ; 
 int FUNC4 (struct mlx4_dev*) ; 
 int FUNC5 (struct mlx4_dev*) ; 
 TYPE_1__* FUNC6 (struct mlx4_dev*) ; 
 int FUNC7 (struct mlx4_dev*,size_t,void**) ; 
 int /*<<< orphan*/  FUNC8 (struct mlx4_dev*,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int) ; 

int FUNC13(struct mlx4_dev *dev, u8 port, u64 mac)
{
	struct mlx4_port_info *info = &FUNC6(dev)->port[port];
	struct mlx4_mac_table *table = &info->mac_table;
	int i, err = 0;
	int free = -1;
	int free_for_dup = -1;
	bool dup = FUNC4(dev);
	u8 dup_port = (port == 1) ? 2 : 1;
	struct mlx4_mac_table *dup_table = &FUNC6(dev)->port[dup_port].mac_table;
	bool need_mf_bond = FUNC5(dev);
	bool can_mf_bond = true;

	FUNC2(dev, "Registering MAC: 0x%llx for port %d %s duplicate\n",
		 (unsigned long long)mac, port,
		 dup ? "with" : "without");

	if (need_mf_bond) {
		if (port == 1) {
			FUNC9(&table->mutex);
			FUNC10(&dup_table->mutex, SINGLE_DEPTH_NESTING);
		} else {
			FUNC9(&dup_table->mutex);
			FUNC10(&table->mutex, SINGLE_DEPTH_NESTING);
		}
	} else {
		FUNC9(&table->mutex);
	}

	if (need_mf_bond) {
		int index_at_port = -1;
		int index_at_dup_port = -1;

		for (i = 0; i < MLX4_MAX_MAC_NUM; i++) {
			if (((MLX4_MAC_MASK & mac) == (MLX4_MAC_MASK & FUNC0(table->entries[i]))))
				index_at_port = i;
			if (((MLX4_MAC_MASK & mac) == (MLX4_MAC_MASK & FUNC0(dup_table->entries[i]))))
				index_at_dup_port = i;
		}

		/* check that same mac is not in the tables at different indices */
		if ((index_at_port != index_at_dup_port) &&
		    (index_at_port >= 0) &&
		    (index_at_dup_port >= 0))
			can_mf_bond = false;

		/* If the mac is already in the primary table, the slot must be
		 * available in the duplicate table as well.
		 */
		if (index_at_port >= 0 && index_at_dup_port < 0 &&
		    dup_table->refs[index_at_port]) {
			can_mf_bond = false;
		}
		/* If the mac is already in the duplicate table, check that the
		 * corresponding index is not occupied in the primary table, or
		 * the primary table already contains the mac at the same index.
		 * Otherwise, you cannot bond (primary contains a different mac
		 * at that index).
		 */
		if (index_at_dup_port >= 0) {
			if (!table->refs[index_at_dup_port] ||
			    ((MLX4_MAC_MASK & mac) == (MLX4_MAC_MASK & FUNC0(table->entries[index_at_dup_port]))))
				free_for_dup = index_at_dup_port;
			else
				can_mf_bond = false;
		}
	}

	for (i = 0; i < MLX4_MAX_MAC_NUM; i++) {
		if (!table->refs[i]) {
			if (free < 0)
				free = i;
			if (free_for_dup < 0 && need_mf_bond && can_mf_bond) {
				if (!dup_table->refs[i])
					free_for_dup = i;
			}
			continue;
		}

		if ((MLX4_MAC_MASK & mac) ==
		     (MLX4_MAC_MASK & FUNC0(table->entries[i]))) {
			/* MAC already registered, increment ref count */
			err = i;
			++table->refs[i];
			if (dup) {
				u64 dup_mac = MLX4_MAC_MASK & FUNC0(dup_table->entries[i]);

				if (dup_mac != mac || !dup_table->is_dup[i]) {
					FUNC8(dev, "register mac: expect duplicate mac 0x%llx on port %d index %d\n",
						  mac, dup_port, i);
				}
			}
			goto out;
		}
	}

	if (need_mf_bond && (free_for_dup < 0)) {
		if (dup) {
			FUNC8(dev, "Fail to allocate duplicate MAC table entry\n");
			FUNC8(dev, "High Availability for virtual functions may not work as expected\n");
			dup = false;
		}
		can_mf_bond = false;
	}

	if (need_mf_bond && can_mf_bond)
		free = free_for_dup;

	FUNC2(dev, "Free MAC index is %d\n", free);

	if (table->total == table->max) {
		/* No free mac entries */
		err = -ENOSPC;
		goto out;
	}

	/* Register new MAC */
	table->entries[free] = FUNC1(mac | MLX4_MAC_VALID);

	err = FUNC7(dev, port, table->entries);
	if (FUNC12(err)) {
		FUNC3(dev, "Failed adding MAC: 0x%llx\n",
			 (unsigned long long) mac);
		table->entries[free] = 0;
		goto out;
	}
	table->refs[free] = 1;
	table->is_dup[free] = false;
	++table->total;
	if (dup) {
		dup_table->refs[free] = 0;
		dup_table->is_dup[free] = true;
		dup_table->entries[free] = FUNC1(mac | MLX4_MAC_VALID);

		err = FUNC7(dev, dup_port, dup_table->entries);
		if (FUNC12(err)) {
			FUNC8(dev, "Failed adding duplicate mac: 0x%llx\n", mac);
			dup_table->is_dup[free] = false;
			dup_table->entries[free] = 0;
			goto out;
		}
		++dup_table->total;
	}
	err = free;
out:
	if (need_mf_bond) {
		if (port == 2) {
			FUNC11(&table->mutex);
			FUNC11(&dup_table->mutex);
		} else {
			FUNC11(&dup_table->mutex);
			FUNC11(&table->mutex);
		}
	} else {
		FUNC11(&table->mutex);
	}
	return err;
}