#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct net_device {int dummy; } ;
struct TYPE_4__ {scalar_t__ type; } ;
struct TYPE_5__ {TYPE_1__ mac; } ;
struct ixgbevf_adapter {int /*<<< orphan*/  mbx_lock; TYPE_2__ hw; int /*<<< orphan*/  num_rx_queues; int /*<<< orphan*/ * rss_indir_tbl; int /*<<< orphan*/  rss_key; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_RSS_HASH_TOP ; 
 int IXGBEVF_X550_VFRETA_SIZE ; 
 scalar_t__ ixgbe_mac_X550_vf ; 
 int FUNC0 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ixgbevf_adapter* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct net_device *netdev, u32 *indir, u8 *key,
			    u8 *hfunc)
{
	struct ixgbevf_adapter *adapter = FUNC4(netdev);
	int err = 0;

	if (hfunc)
		*hfunc = ETH_RSS_HASH_TOP;

	if (adapter->hw.mac.type >= ixgbe_mac_X550_vf) {
		if (key)
			FUNC3(key, adapter->rss_key,
			       FUNC2(netdev));

		if (indir) {
			int i;

			for (i = 0; i < IXGBEVF_X550_VFRETA_SIZE; i++)
				indir[i] = adapter->rss_indir_tbl[i];
		}
	} else {
		/* If neither indirection table nor hash key was requested
		 *  - just return a success avoiding taking any locks.
		 */
		if (!indir && !key)
			return 0;

		FUNC5(&adapter->mbx_lock);
		if (indir)
			err = FUNC0(&adapter->hw, indir,
						      adapter->num_rx_queues);

		if (!err && key)
			err = FUNC1(&adapter->hw, key);

		FUNC6(&adapter->mbx_lock);
	}

	return err;
}