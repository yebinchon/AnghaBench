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
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct xgbe_hw_if {unsigned int (* set_rss_lookup_table ) (struct xgbe_prv_data*,int /*<<< orphan*/  const*) ;unsigned int (* set_rss_hash_key ) (struct xgbe_prv_data*,scalar_t__ const*) ;} ;
struct xgbe_prv_data {struct xgbe_hw_if hw_if; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 scalar_t__ const ETH_RSS_HASH_NO_CHANGE ; 
 scalar_t__ const ETH_RSS_HASH_TOP ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,char*) ; 
 struct xgbe_prv_data* FUNC1 (struct net_device*) ; 
 unsigned int FUNC2 (struct xgbe_prv_data*,int /*<<< orphan*/  const*) ; 
 unsigned int FUNC3 (struct xgbe_prv_data*,scalar_t__ const*) ; 

__attribute__((used)) static int FUNC4(struct net_device *netdev, const u32 *indir,
			 const u8 *key, const u8 hfunc)
{
	struct xgbe_prv_data *pdata = FUNC1(netdev);
	struct xgbe_hw_if *hw_if = &pdata->hw_if;
	unsigned int ret;

	if (hfunc != ETH_RSS_HASH_NO_CHANGE && hfunc != ETH_RSS_HASH_TOP) {
		FUNC0(netdev, "unsupported hash function\n");
		return -EOPNOTSUPP;
	}

	if (indir) {
		ret = hw_if->set_rss_lookup_table(pdata, indir);
		if (ret)
			return ret;
	}

	if (key) {
		ret = hw_if->set_rss_hash_key(pdata, key);
		if (ret)
			return ret;
	}

	return 0;
}