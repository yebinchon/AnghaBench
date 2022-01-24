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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct nicvf_rss_info {int rss_size; int /*<<< orphan*/  key; int /*<<< orphan*/ * ind_tbl; } ;
struct nicvf {struct nicvf_rss_info rss_info; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_RSS_HASH_TOP ; 
 int RSS_HASH_KEY_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 struct nicvf* FUNC1 (struct net_device*) ; 

__attribute__((used)) static int FUNC2(struct net_device *dev, u32 *indir, u8 *hkey,
			  u8 *hfunc)
{
	struct nicvf *nic = FUNC1(dev);
	struct nicvf_rss_info *rss = &nic->rss_info;
	int idx;

	if (indir) {
		for (idx = 0; idx < rss->rss_size; idx++)
			indir[idx] = rss->ind_tbl[idx];
	}

	if (hkey)
		FUNC0(hkey, rss->key, RSS_HASH_KEY_SIZE * sizeof(u64));

	if (hfunc)
		*hfunc = ETH_RSS_HASH_TOP;

	return 0;
}