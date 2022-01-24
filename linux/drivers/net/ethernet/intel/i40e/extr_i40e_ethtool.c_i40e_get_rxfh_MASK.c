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
struct i40e_vsi {int dummy; } ;
struct i40e_netdev_priv {struct i40e_vsi* vsi; } ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ ETH_RSS_HASH_TOP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 size_t I40E_HLUT_ARRAY_SIZE ; 
 int FUNC0 (struct i40e_vsi*,scalar_t__*,scalar_t__*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*) ; 
 scalar_t__* FUNC2 (size_t,int /*<<< orphan*/ ) ; 
 struct i40e_netdev_priv* FUNC3 (struct net_device*) ; 

__attribute__((used)) static int FUNC4(struct net_device *netdev, u32 *indir, u8 *key,
			 u8 *hfunc)
{
	struct i40e_netdev_priv *np = FUNC3(netdev);
	struct i40e_vsi *vsi = np->vsi;
	u8 *lut, *seed = NULL;
	int ret;
	u16 i;

	if (hfunc)
		*hfunc = ETH_RSS_HASH_TOP;

	if (!indir)
		return 0;

	seed = key;
	lut = FUNC2(I40E_HLUT_ARRAY_SIZE, GFP_KERNEL);
	if (!lut)
		return -ENOMEM;
	ret = FUNC0(vsi, seed, lut, I40E_HLUT_ARRAY_SIZE);
	if (ret)
		goto out;
	for (i = 0; i < I40E_HLUT_ARRAY_SIZE; i++)
		indir[i] = (u32)(lut[i]);

out:
	FUNC1(lut);

	return ret;
}