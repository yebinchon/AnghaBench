#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct net_device {int dummy; } ;
struct ixgbe_adapter {int /*<<< orphan*/  rss_key; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_RSS_HASH_TOP ; 
 int /*<<< orphan*/  FUNC0 (struct ixgbe_adapter*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ixgbe_adapter* FUNC3 (struct net_device*) ; 

__attribute__((used)) static int FUNC4(struct net_device *netdev, u32 *indir, u8 *key,
			  u8 *hfunc)
{
	struct ixgbe_adapter *adapter = FUNC3(netdev);

	if (hfunc)
		*hfunc = ETH_RSS_HASH_TOP;

	if (indir)
		FUNC0(adapter, indir);

	if (key)
		FUNC2(key, adapter->rss_key, FUNC1(netdev));

	return 0;
}