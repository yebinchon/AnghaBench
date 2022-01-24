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
typedef  int u32 ;
struct TYPE_3__ {int handle; } ;
struct tc_cls_u32_offload {TYPE_1__ knode; } ;
struct net_device {int dummy; } ;
struct cxgb4_tc_u32_table {int size; struct cxgb4_link* table; } ;
struct cxgb4_link {int link_handle; int /*<<< orphan*/  fs; int /*<<< orphan*/ * match_field; int /*<<< orphan*/  tid_map; } ;
struct TYPE_4__ {unsigned int nftids; } ;
struct adapter {TYPE_2__ tids; struct cxgb4_tc_u32_table* tc_u32; int /*<<< orphan*/  pdev_dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int ERANGE ; 
 int FUNC0 (int) ; 
 int FUNC1 (struct net_device*,unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct net_device*,unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 struct adapter* FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (unsigned int,int /*<<< orphan*/ ) ; 

int FUNC9(struct net_device *dev, struct tc_cls_u32_offload *cls)
{
	struct adapter *adapter = FUNC7(dev);
	unsigned int filter_id, max_tids, i, j;
	struct cxgb4_link *link = NULL;
	struct cxgb4_tc_u32_table *t;
	u32 handle, uhtid;
	int ret;

	if (!FUNC2(dev))
		return -EOPNOTSUPP;

	/* Fetch the location to delete the filter. */
	filter_id = cls->knode.handle & 0xFFFFF;

	if (filter_id > adapter->tids.nftids) {
		FUNC5(adapter->pdev_dev,
			"Location %d out of range for deletion. Max: %d\n",
			filter_id, adapter->tids.nftids);
		return -ERANGE;
	}

	t = adapter->tc_u32;
	handle = cls->knode.handle;
	uhtid = FUNC0(cls->knode.handle);

	/* Ensure that uhtid is either root u32 (i.e. 0x800)
	 * or a a valid linked bucket.
	 */
	if (uhtid != 0x800 && uhtid >= t->size)
		return -EINVAL;

	/* Delete the specified filter */
	if (uhtid != 0x800) {
		link = &t->table[uhtid - 1];
		if (!link->link_handle)
			return -EINVAL;

		if (!FUNC8(filter_id, link->tid_map))
			return -EINVAL;
	}

	ret = FUNC4(dev, filter_id, NULL);
	if (ret)
		goto out;

	if (link)
		FUNC3(filter_id, link->tid_map);

	/* If a link is being deleted, then delete all filters
	 * associated with the link.
	 */
	max_tids = adapter->tids.nftids;
	for (i = 0; i < t->size; i++) {
		link = &t->table[i];

		if (link->link_handle == handle) {
			for (j = 0; j < max_tids; j++) {
				if (!FUNC8(j, link->tid_map))
					continue;

				ret = FUNC1(dev, j, NULL, NULL);
				if (ret)
					goto out;

				FUNC3(j, link->tid_map);
			}

			/* Clear the link state */
			link->match_field = NULL;
			link->link_handle = 0;
			FUNC6(&link->fs, 0, sizeof(link->fs));
			break;
		}
	}

out:
	return ret;
}