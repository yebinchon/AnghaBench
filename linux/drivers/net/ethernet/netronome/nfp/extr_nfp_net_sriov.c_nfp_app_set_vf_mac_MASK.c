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
typedef  int /*<<< orphan*/  u8 ;
struct nfp_app {TYPE_1__* pf; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  cpp; scalar_t__ vfcfg_tbl2; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ NFP_NET_VF_CFG_MAC_LO ; 
 int /*<<< orphan*/  NFP_NET_VF_CFG_MB_CAP_MAC ; 
 int NFP_NET_VF_CFG_MB_SZ ; 
 int /*<<< orphan*/  NFP_NET_VF_CFG_MB_UPD_MAC ; 
 int NFP_NET_VF_CFG_SZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 struct nfp_app* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int) ; 
 int FUNC5 (struct nfp_app*,int,int /*<<< orphan*/ ,char*) ; 
 int FUNC6 (struct nfp_app*,int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__) ; 

int FUNC10(struct net_device *netdev, int vf, u8 *mac)
{
	struct nfp_app *app = FUNC3(netdev);
	unsigned int vf_offset;
	int err;

	err = FUNC5(app, vf, NFP_NET_VF_CFG_MB_CAP_MAC, "mac");
	if (err)
		return err;

	if (FUNC2(mac)) {
		FUNC7(app->pf->cpp,
			 "invalid Ethernet address %pM for VF id %d\n",
			 mac, vf);
		return -EINVAL;
	}

	/* Write MAC to VF entry in VF config symbol */
	vf_offset = NFP_NET_VF_CFG_MB_SZ + vf * NFP_NET_VF_CFG_SZ;
	FUNC8(FUNC1(mac), app->pf->vfcfg_tbl2 + vf_offset);
	FUNC9(FUNC0(mac + 4),
	       app->pf->vfcfg_tbl2 + vf_offset + NFP_NET_VF_CFG_MAC_LO);

	err = FUNC6(app, vf, NFP_NET_VF_CFG_MB_UPD_MAC, "MAC");
	if (!err)
		FUNC4(app->pf->cpp,
			 "MAC %pM set on VF %d, reload the VF driver to make this change effective.\n",
			 mac, vf);

	return err;
}