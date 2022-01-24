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
typedef  scalar_t__ u32 ;
struct net_device {int dummy; } ;
struct ksz_hw {int mib_cnt; } ;
struct dev_priv {struct dev_info* adapter; } ;
struct dev_info {struct ksz_hw hw; } ;

/* Variables and functions */
 int ETH_GSTRING_LEN ; 
 scalar_t__ ETH_SS_STATS ; 
 int /*<<< orphan*/  ethtool_stats_keys ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 struct dev_priv* FUNC1 (struct net_device*) ; 

__attribute__((used)) static void FUNC2(struct net_device *dev, u32 stringset, u8 *buf)
{
	struct dev_priv *priv = FUNC1(dev);
	struct dev_info *hw_priv = priv->adapter;
	struct ksz_hw *hw = &hw_priv->hw;

	if (ETH_SS_STATS == stringset)
		FUNC0(buf, &ethtool_stats_keys,
			ETH_GSTRING_LEN * hw->mib_cnt);
}