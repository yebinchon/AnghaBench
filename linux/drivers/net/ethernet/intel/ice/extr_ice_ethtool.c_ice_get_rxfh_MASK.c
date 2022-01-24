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
typedef  scalar_t__ u32 ;
struct net_device {int dummy; } ;
struct ice_vsi {int rss_table_size; struct ice_pf* back; } ;
struct ice_pf {TYPE_1__* pdev; int /*<<< orphan*/  flags; } ;
struct ice_netdev_priv {struct ice_vsi* vsi; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 scalar_t__ ETH_RSS_HASH_TOP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  ICE_FLAG_RSS_ENA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__*) ; 
 scalar_t__* FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct ice_vsi*,scalar_t__*,scalar_t__*,int) ; 
 struct ice_netdev_priv* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct net_device *netdev, u32 *indir, u8 *key, u8 *hfunc)
{
	struct ice_netdev_priv *np = FUNC3(netdev);
	struct ice_vsi *vsi = np->vsi;
	struct ice_pf *pf = vsi->back;
	int ret = 0, i;
	u8 *lut;

	if (hfunc)
		*hfunc = ETH_RSS_HASH_TOP;

	if (!indir)
		return 0;

	if (!FUNC5(ICE_FLAG_RSS_ENA, pf->flags)) {
		/* RSS not supported return error here */
		FUNC4(netdev, "RSS is not configured on this VSI!\n");
		return -EIO;
	}

	lut = FUNC1(&pf->pdev->dev, vsi->rss_table_size, GFP_KERNEL);
	if (!lut)
		return -ENOMEM;

	if (FUNC2(vsi, key, lut, vsi->rss_table_size)) {
		ret = -EIO;
		goto out;
	}

	for (i = 0; i < vsi->rss_table_size; i++)
		indir[i] = (u32)(lut[i]);

out:
	FUNC0(&pf->pdev->dev, lut);
	return ret;
}