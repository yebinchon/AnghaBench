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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct nicvf_rss_info {int rss_size; int /*<<< orphan*/  key; int /*<<< orphan*/ * ind_tbl; int /*<<< orphan*/  enable; } ;
struct nicvf {int /*<<< orphan*/  netdev; struct nicvf_rss_info rss_info; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int EOPNOTSUPP ; 
 scalar_t__ const ETH_RSS_HASH_NO_CHANGE ; 
 scalar_t__ const ETH_RSS_HASH_TOP ; 
 int RSS_HASH_KEY_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__ const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 struct nicvf* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct nicvf*) ; 
 int /*<<< orphan*/  FUNC4 (struct nicvf*) ; 

__attribute__((used)) static int FUNC5(struct net_device *dev, const u32 *indir,
			  const u8 *hkey, const u8 hfunc)
{
	struct nicvf *nic = FUNC2(dev);
	struct nicvf_rss_info *rss = &nic->rss_info;
	int idx;

	if (hfunc != ETH_RSS_HASH_NO_CHANGE && hfunc != ETH_RSS_HASH_TOP)
		return -EOPNOTSUPP;

	if (!rss->enable) {
		FUNC1(nic->netdev,
			   "RSS is disabled, cannot change settings\n");
		return -EIO;
	}

	if (indir) {
		for (idx = 0; idx < rss->rss_size; idx++)
			rss->ind_tbl[idx] = indir[idx];
	}

	if (hkey) {
		FUNC0(rss->key, hkey, RSS_HASH_KEY_SIZE * sizeof(u64));
		FUNC4(nic);
	}

	FUNC3(nic);
	return 0;
}