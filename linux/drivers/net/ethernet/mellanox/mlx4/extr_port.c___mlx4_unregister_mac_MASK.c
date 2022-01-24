#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int /*<<< orphan*/  u64 ;
struct mlx4_mac_table {int* is_dup; int /*<<< orphan*/  mutex; int /*<<< orphan*/  total; scalar_t__* entries; scalar_t__* refs; } ;
struct mlx4_port_info {struct mlx4_mac_table mac_table; } ;
struct TYPE_3__ {int num_ports; } ;
struct mlx4_dev {TYPE_1__ caps; } ;
struct TYPE_4__ {struct mlx4_port_info* port; } ;

/* Variables and functions */
 int /*<<< orphan*/  SINGLE_DEPTH_NESTING ; 
 int FUNC0 (struct mlx4_dev*,struct mlx4_mac_table*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx4_dev*,char*,int) ; 
 int FUNC2 (struct mlx4_dev*) ; 
 TYPE_2__* FUNC3 (struct mlx4_dev*) ; 
 scalar_t__ FUNC4 (struct mlx4_dev*,int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx4_dev*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (struct mlx4_dev*,struct mlx4_mac_table*,int) ; 

void FUNC10(struct mlx4_dev *dev, u8 port, u64 mac)
{
	struct mlx4_port_info *info;
	struct mlx4_mac_table *table;
	int index;
	bool dup = FUNC2(dev);
	u8 dup_port = (port == 1) ? 2 : 1;
	struct mlx4_mac_table *dup_table = &FUNC3(dev)->port[dup_port].mac_table;

	if (port < 1 || port > dev->caps.num_ports) {
		FUNC5(dev, "invalid port number (%d), aborting...\n", port);
		return;
	}
	info = &FUNC3(dev)->port[port];
	table = &info->mac_table;

	if (dup) {
		if (port == 1) {
			FUNC6(&table->mutex);
			FUNC7(&dup_table->mutex, SINGLE_DEPTH_NESTING);
		} else {
			FUNC6(&dup_table->mutex);
			FUNC7(&table->mutex, SINGLE_DEPTH_NESTING);
		}
	} else {
		FUNC6(&table->mutex);
	}

	index = FUNC0(dev, table, mac);

	if (FUNC9(dev, table, index))
		goto out;

	if (--table->refs[index] || table->is_dup[index]) {
		FUNC1(dev, "Have more references for index %d, no need to modify mac table\n",
			 index);
		if (!table->refs[index])
			dup_table->is_dup[index] = false;
		goto out;
	}

	table->entries[index] = 0;
	if (FUNC4(dev, port, table->entries))
		FUNC5(dev, "Fail to set mac in port %d during unregister\n", port);
	--table->total;

	if (dup) {
		dup_table->is_dup[index] = false;
		if (dup_table->refs[index])
			goto out;
		dup_table->entries[index] = 0;
		if (FUNC4(dev, dup_port, dup_table->entries))
			FUNC5(dev, "Fail to set mac in duplicate port %d during unregister\n", dup_port);

		--table->total;
	}
out:
	if (dup) {
		if (port == 2) {
			FUNC8(&table->mutex);
			FUNC8(&dup_table->mutex);
		} else {
			FUNC8(&dup_table->mutex);
			FUNC8(&table->mutex);
		}
	} else {
		FUNC8(&table->mutex);
	}
}