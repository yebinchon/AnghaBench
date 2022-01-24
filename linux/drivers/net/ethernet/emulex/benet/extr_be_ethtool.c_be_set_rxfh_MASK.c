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
typedef  scalar_t__ u8 ;
typedef  int u32 ;
struct net_device {int dummy; } ;
struct be_rx_obj {scalar_t__ rss_id; } ;
struct TYPE_2__ {int* rss_queue; scalar_t__* rsstable; scalar_t__* rss_hkey; int /*<<< orphan*/  rss_flags; } ;
struct be_adapter {TYPE_1__ rss_info; struct be_rx_obj* rx_obj; } ;

/* Variables and functions */
 int EIO ; 
 int EOPNOTSUPP ; 
 scalar_t__ const ETH_RSS_HASH_NO_CHANGE ; 
 scalar_t__ const ETH_RSS_HASH_TOP ; 
 int /*<<< orphan*/  RSS_ENABLE_NONE ; 
 int RSS_HASH_KEY_LEN ; 
 int RSS_INDIR_TABLE_LEN ; 
 int FUNC0 (struct be_adapter*,scalar_t__*,int /*<<< orphan*/ ,int,scalar_t__ const*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,scalar_t__ const*,int) ; 
 struct be_adapter* FUNC2 (struct net_device*) ; 

__attribute__((used)) static int FUNC3(struct net_device *netdev, const u32 *indir,
		       const u8 *hkey, const u8 hfunc)
{
	int rc = 0, i, j;
	struct be_adapter *adapter = FUNC2(netdev);
	u8 rsstable[RSS_INDIR_TABLE_LEN];

	/* We do not allow change in unsupported parameters */
	if (hfunc != ETH_RSS_HASH_NO_CHANGE && hfunc != ETH_RSS_HASH_TOP)
		return -EOPNOTSUPP;

	if (indir) {
		struct be_rx_obj *rxo;

		for (i = 0; i < RSS_INDIR_TABLE_LEN; i++) {
			j = indir[i];
			rxo = &adapter->rx_obj[j];
			rsstable[i] = rxo->rss_id;
			adapter->rss_info.rss_queue[i] = j;
		}
	} else {
		FUNC1(rsstable, adapter->rss_info.rsstable,
		       RSS_INDIR_TABLE_LEN);
	}

	if (!hkey)
		hkey =  adapter->rss_info.rss_hkey;

	rc = FUNC0(adapter, rsstable,
			       adapter->rss_info.rss_flags,
			       RSS_INDIR_TABLE_LEN, hkey);
	if (rc) {
		adapter->rss_info.rss_flags = RSS_ENABLE_NONE;
		return -EIO;
	}
	FUNC1(adapter->rss_info.rss_hkey, hkey, RSS_HASH_KEY_LEN);
	FUNC1(adapter->rss_info.rsstable, rsstable,
	       RSS_INDIR_TABLE_LEN);
	return 0;
}