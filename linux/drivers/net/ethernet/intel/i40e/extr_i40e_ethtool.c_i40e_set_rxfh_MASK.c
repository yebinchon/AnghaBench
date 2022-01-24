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
typedef  scalar_t__ u32 ;
typedef  size_t u16 ;
struct net_device {int dummy; } ;
struct i40e_vsi {scalar_t__* rss_lut_user; int /*<<< orphan*/  rss_size; void* rss_hkey_user; struct i40e_pf* back; } ;
struct i40e_pf {int dummy; } ;
struct i40e_netdev_priv {struct i40e_vsi* vsi; } ;

/* Variables and functions */
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 scalar_t__ const ETH_RSS_HASH_NO_CHANGE ; 
 scalar_t__ const ETH_RSS_HASH_TOP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 size_t I40E_HKEY_ARRAY_SIZE ; 
 size_t I40E_HLUT_ARRAY_SIZE ; 
 int FUNC0 (struct i40e_vsi*,scalar_t__*,scalar_t__*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct i40e_pf*,scalar_t__*,size_t,int /*<<< orphan*/ ) ; 
 void* FUNC2 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*,scalar_t__ const*,size_t) ; 
 struct i40e_netdev_priv* FUNC4 (struct net_device*) ; 

__attribute__((used)) static int FUNC5(struct net_device *netdev, const u32 *indir,
			 const u8 *key, const u8 hfunc)
{
	struct i40e_netdev_priv *np = FUNC4(netdev);
	struct i40e_vsi *vsi = np->vsi;
	struct i40e_pf *pf = vsi->back;
	u8 *seed = NULL;
	u16 i;

	if (hfunc != ETH_RSS_HASH_NO_CHANGE && hfunc != ETH_RSS_HASH_TOP)
		return -EOPNOTSUPP;

	if (key) {
		if (!vsi->rss_hkey_user) {
			vsi->rss_hkey_user = FUNC2(I40E_HKEY_ARRAY_SIZE,
						     GFP_KERNEL);
			if (!vsi->rss_hkey_user)
				return -ENOMEM;
		}
		FUNC3(vsi->rss_hkey_user, key, I40E_HKEY_ARRAY_SIZE);
		seed = vsi->rss_hkey_user;
	}
	if (!vsi->rss_lut_user) {
		vsi->rss_lut_user = FUNC2(I40E_HLUT_ARRAY_SIZE, GFP_KERNEL);
		if (!vsi->rss_lut_user)
			return -ENOMEM;
	}

	/* Each 32 bits pointed by 'indir' is stored with a lut entry */
	if (indir)
		for (i = 0; i < I40E_HLUT_ARRAY_SIZE; i++)
			vsi->rss_lut_user[i] = (u8)(indir[i]);
	else
		FUNC1(pf, vsi->rss_lut_user, I40E_HLUT_ARRAY_SIZE,
				  vsi->rss_size);

	return FUNC0(vsi, seed, vsi->rss_lut_user,
			       I40E_HLUT_ARRAY_SIZE);
}