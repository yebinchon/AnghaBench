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
struct rndis_device {int /*<<< orphan*/  rss_key; int /*<<< orphan*/ * rx_table; } ;
struct netvsc_device {struct rndis_device* extension; } ;
struct net_device_context {int /*<<< orphan*/  nvdev; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  ETH_RSS_HASH_TOP ; 
 int ITAB_NUM ; 
 int /*<<< orphan*/  NETVSC_HASH_KEYLEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct net_device_context* FUNC1 (struct net_device*) ; 
 struct netvsc_device* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct net_device *dev, u32 *indir, u8 *key,
			   u8 *hfunc)
{
	struct net_device_context *ndc = FUNC1(dev);
	struct netvsc_device *ndev = FUNC2(ndc->nvdev);
	struct rndis_device *rndis_dev;
	int i;

	if (!ndev)
		return -ENODEV;

	if (hfunc)
		*hfunc = ETH_RSS_HASH_TOP;	/* Toeplitz */

	rndis_dev = ndev->extension;
	if (indir) {
		for (i = 0; i < ITAB_NUM; i++)
			indir[i] = rndis_dev->rx_table[i];
	}

	if (key)
		FUNC0(key, rndis_dev->rss_key, NETVSC_HASH_KEYLEN);

	return 0;
}