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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct nfp_app {TYPE_1__* pf; } ;
struct net_device {int dummy; } ;
struct ifla_vf_info {int vf; void* linkstate; void* trusted; void* spoofchk; void* qos; void* vlan; int /*<<< orphan*/ * mac; } ;
struct TYPE_2__ {scalar_t__ vfcfg_tbl2; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ NFP_NET_VF_CFG_CTRL ; 
 int /*<<< orphan*/  NFP_NET_VF_CFG_CTRL_LINK_STATE ; 
 int /*<<< orphan*/  NFP_NET_VF_CFG_CTRL_SPOOF ; 
 int /*<<< orphan*/  NFP_NET_VF_CFG_CTRL_TRUST ; 
 scalar_t__ NFP_NET_VF_CFG_MAC_LO ; 
 int NFP_NET_VF_CFG_MB_SZ ; 
 int NFP_NET_VF_CFG_SZ ; 
 scalar_t__ NFP_NET_VF_CFG_VLAN ; 
 int /*<<< orphan*/  NFP_NET_VF_CFG_VLAN_QOS ; 
 int /*<<< orphan*/  NFP_NET_VF_CFG_VLAN_VID ; 
 int /*<<< orphan*/  FUNC1 (struct ifla_vf_info*,int /*<<< orphan*/ ,int) ; 
 struct nfp_app* FUNC2 (struct net_device*) ; 
 int FUNC3 (struct nfp_app*,int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 

int FUNC9(struct net_device *netdev, int vf,
			  struct ifla_vf_info *ivi)
{
	struct nfp_app *app = FUNC2(netdev);
	unsigned int vf_offset;
	u16 vlan_tci;
	u32 mac_hi;
	u16 mac_lo;
	u8 flags;
	int err;

	err = FUNC3(app, vf, 0, "");
	if (err)
		return err;

	vf_offset = NFP_NET_VF_CFG_MB_SZ + vf * NFP_NET_VF_CFG_SZ;

	mac_hi = FUNC7(app->pf->vfcfg_tbl2 + vf_offset);
	mac_lo = FUNC8(app->pf->vfcfg_tbl2 + vf_offset + NFP_NET_VF_CFG_MAC_LO);

	flags = FUNC6(app->pf->vfcfg_tbl2 + vf_offset + NFP_NET_VF_CFG_CTRL);
	vlan_tci = FUNC8(app->pf->vfcfg_tbl2 + vf_offset + NFP_NET_VF_CFG_VLAN);

	FUNC1(ivi, 0, sizeof(*ivi));
	ivi->vf = vf;

	FUNC5(mac_hi, &ivi->mac[0]);
	FUNC4(mac_lo, &ivi->mac[4]);

	ivi->vlan = FUNC0(NFP_NET_VF_CFG_VLAN_VID, vlan_tci);
	ivi->qos = FUNC0(NFP_NET_VF_CFG_VLAN_QOS, vlan_tci);

	ivi->spoofchk = FUNC0(NFP_NET_VF_CFG_CTRL_SPOOF, flags);
	ivi->trusted = FUNC0(NFP_NET_VF_CFG_CTRL_TRUST, flags);
	ivi->linkstate = FUNC0(NFP_NET_VF_CFG_CTRL_LINK_STATE, flags);

	return 0;
}