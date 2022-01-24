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
struct TYPE_2__ {scalar_t__ vfcfg_tbl2; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int NFP_NET_VF_CFG_CTRL ; 
 int /*<<< orphan*/  NFP_NET_VF_CFG_CTRL_TRUST ; 
 int /*<<< orphan*/  NFP_NET_VF_CFG_MB_CAP_TRUST ; 
 int NFP_NET_VF_CFG_MB_SZ ; 
 int /*<<< orphan*/  NFP_NET_VF_CFG_MB_UPD_TRUST ; 
 int NFP_NET_VF_CFG_SZ ; 
 struct nfp_app* FUNC1 (struct net_device*) ; 
 int FUNC2 (struct nfp_app*,int,int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (struct nfp_app*,int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 

int FUNC6(struct net_device *netdev, int vf, bool enable)
{
	struct nfp_app *app = FUNC1(netdev);
	unsigned int vf_offset;
	u8 vf_ctrl;
	int err;

	err = FUNC2(app, vf, NFP_NET_VF_CFG_MB_CAP_TRUST,
				  "trust");
	if (err)
		return err;

	/* Write trust control bit to VF entry in VF config symbol */
	vf_offset = NFP_NET_VF_CFG_MB_SZ + vf * NFP_NET_VF_CFG_SZ +
		NFP_NET_VF_CFG_CTRL;
	vf_ctrl = FUNC4(app->pf->vfcfg_tbl2 + vf_offset);
	vf_ctrl &= ~NFP_NET_VF_CFG_CTRL_TRUST;
	vf_ctrl |= FUNC0(NFP_NET_VF_CFG_CTRL_TRUST, enable);
	FUNC5(vf_ctrl, app->pf->vfcfg_tbl2 + vf_offset);

	return FUNC3(app, vf, NFP_NET_VF_CFG_MB_UPD_TRUST,
				    "trust");
}