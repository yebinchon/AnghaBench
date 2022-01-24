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
typedef  int u8 ;
typedef  int u16 ;
struct nfp_app {TYPE_1__* pf; } ;
struct net_device {int dummy; } ;
typedef  scalar_t__ __be16 ;
struct TYPE_2__ {scalar_t__ vfcfg_tbl2; int /*<<< orphan*/  cpp; } ;

/* Variables and functions */
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  ETH_P_8021Q ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  NFP_NET_VF_CFG_MB_CAP_VLAN ; 
 int NFP_NET_VF_CFG_MB_SZ ; 
 int /*<<< orphan*/  NFP_NET_VF_CFG_MB_UPD_VLAN ; 
 int NFP_NET_VF_CFG_SZ ; 
 scalar_t__ NFP_NET_VF_CFG_VLAN ; 
 int /*<<< orphan*/  NFP_NET_VF_CFG_VLAN_QOS ; 
 int /*<<< orphan*/  NFP_NET_VF_CFG_VLAN_VID ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 struct nfp_app* FUNC2 (struct net_device*) ; 
 int FUNC3 (struct nfp_app*,int,int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (struct nfp_app*,int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int,scalar_t__) ; 

int FUNC7(struct net_device *netdev, int vf, u16 vlan, u8 qos,
			__be16 vlan_proto)
{
	struct nfp_app *app = FUNC2(netdev);
	unsigned int vf_offset;
	u16 vlan_tci;
	int err;

	err = FUNC3(app, vf, NFP_NET_VF_CFG_MB_CAP_VLAN, "vlan");
	if (err)
		return err;

	if (vlan_proto != FUNC1(ETH_P_8021Q))
		return -EOPNOTSUPP;

	if (vlan > 4095 || qos > 7) {
		FUNC5(app->pf->cpp,
			 "invalid vlan id or qos for VF id %d\n", vf);
		return -EINVAL;
	}

	/* Write VLAN tag to VF entry in VF config symbol */
	vlan_tci = FUNC0(NFP_NET_VF_CFG_VLAN_VID, vlan) |
		FUNC0(NFP_NET_VF_CFG_VLAN_QOS, qos);
	vf_offset = NFP_NET_VF_CFG_MB_SZ + vf * NFP_NET_VF_CFG_SZ;
	FUNC6(vlan_tci, app->pf->vfcfg_tbl2 + vf_offset + NFP_NET_VF_CFG_VLAN);

	return FUNC4(app, vf, NFP_NET_VF_CFG_MB_UPD_VLAN,
				    "vlan");
}