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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_2__ {scalar_t__ mbox_off; } ;
struct nfp_net {TYPE_1__ tlv_caps; } ;
struct net_device {int dummy; } ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_P_8021Q ; 
 int /*<<< orphan*/  NFP_NET_CFG_MBOX_CMD_CTAG_FILTER_ADD ; 
 scalar_t__ NFP_NET_CFG_VLAN_FILTER_PROTO ; 
 int /*<<< orphan*/  NFP_NET_CFG_VLAN_FILTER_SZ ; 
 scalar_t__ NFP_NET_CFG_VLAN_FILTER_VID ; 
 struct nfp_net* FUNC0 (struct net_device*) ; 
 int FUNC1 (struct nfp_net*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct nfp_net*,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC3 (struct nfp_net*,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct net_device *netdev, __be16 proto, u16 vid)
{
	const u32 cmd = NFP_NET_CFG_MBOX_CMD_CTAG_FILTER_ADD;
	struct nfp_net *nn = FUNC0(netdev);
	int err;

	/* Priority tagged packets with vlan id 0 are processed by the
	 * NFP as untagged packets
	 */
	if (!vid)
		return 0;

	err = FUNC1(nn, NFP_NET_CFG_VLAN_FILTER_SZ);
	if (err)
		return err;

	FUNC3(nn, nn->tlv_caps.mbox_off + NFP_NET_CFG_VLAN_FILTER_VID, vid);
	FUNC3(nn, nn->tlv_caps.mbox_off + NFP_NET_CFG_VLAN_FILTER_PROTO,
		  ETH_P_8021Q);

	return FUNC2(nn, cmd);
}