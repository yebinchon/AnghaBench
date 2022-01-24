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
struct ice_vsi {int rss_table_size; scalar_t__* rss_lut_user; int /*<<< orphan*/  rss_size; void* rss_hkey_user; struct ice_pf* back; } ;
struct ice_pf {TYPE_1__* pdev; int /*<<< orphan*/  flags; } ;
struct ice_netdev_priv {struct ice_vsi* vsi; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 scalar_t__ const ETH_RSS_HASH_NO_CHANGE ; 
 scalar_t__ const ETH_RSS_HASH_TOP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  ICE_FLAG_RSS_ENA ; 
 int ICE_VSIQF_HKEY_ARRAY_SIZE ; 
 void* FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct ice_vsi*,scalar_t__*,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC3 (void*,scalar_t__ const*,int) ; 
 struct ice_netdev_priv* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(struct net_device *netdev, const u32 *indir, const u8 *key,
	     const u8 hfunc)
{
	struct ice_netdev_priv *np = FUNC4(netdev);
	struct ice_vsi *vsi = np->vsi;
	struct ice_pf *pf = vsi->back;
	u8 *seed = NULL;

	if (hfunc != ETH_RSS_HASH_NO_CHANGE && hfunc != ETH_RSS_HASH_TOP)
		return -EOPNOTSUPP;

	if (!FUNC6(ICE_FLAG_RSS_ENA, pf->flags)) {
		/* RSS not supported return error here */
		FUNC5(netdev, "RSS is not configured on this VSI!\n");
		return -EIO;
	}

	if (key) {
		if (!vsi->rss_hkey_user) {
			vsi->rss_hkey_user =
				FUNC0(&pf->pdev->dev,
					     ICE_VSIQF_HKEY_ARRAY_SIZE,
					     GFP_KERNEL);
			if (!vsi->rss_hkey_user)
				return -ENOMEM;
		}
		FUNC3(vsi->rss_hkey_user, key, ICE_VSIQF_HKEY_ARRAY_SIZE);
		seed = vsi->rss_hkey_user;
	}

	if (!vsi->rss_lut_user) {
		vsi->rss_lut_user = FUNC0(&pf->pdev->dev,
						 vsi->rss_table_size,
						 GFP_KERNEL);
		if (!vsi->rss_lut_user)
			return -ENOMEM;
	}

	/* Each 32 bits pointed by 'indir' is stored with a lut entry */
	if (indir) {
		int i;

		for (i = 0; i < vsi->rss_table_size; i++)
			vsi->rss_lut_user[i] = (u8)(indir[i]);
	} else {
		FUNC1(vsi->rss_lut_user, vsi->rss_table_size,
				 vsi->rss_size);
	}

	if (FUNC2(vsi, seed, vsi->rss_lut_user, vsi->rss_table_size))
		return -EIO;

	return 0;
}