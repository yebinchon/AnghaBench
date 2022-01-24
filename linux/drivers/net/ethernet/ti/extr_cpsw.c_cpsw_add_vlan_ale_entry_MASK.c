#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct cpsw_priv {int emac_port; int /*<<< orphan*/  mac_addr; TYPE_2__* ndev; struct cpsw_common* cpsw; } ;
struct TYPE_3__ {scalar_t__ dual_emac; } ;
struct cpsw_common {int /*<<< orphan*/  ale; TYPE_1__ data; } ;
struct TYPE_4__ {int flags; int /*<<< orphan*/  broadcast; } ;

/* Variables and functions */
 void* ALE_ALL_PORTS ; 
 int ALE_PORT_1 ; 
 int ALE_PORT_2 ; 
 int ALE_PORT_HOST ; 
 int /*<<< orphan*/  ALE_VLAN ; 
 int /*<<< orphan*/  HOST_PORT_NUM ; 
 int IFF_ALLMULTI ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,unsigned short,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned short) ; 
 int FUNC2 (int /*<<< orphan*/ ,unsigned short,int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned short) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned short,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC5(struct cpsw_priv *priv,
				unsigned short vid)
{
	int ret;
	int unreg_mcast_mask = 0;
	int mcast_mask;
	u32 port_mask;
	struct cpsw_common *cpsw = priv->cpsw;

	if (cpsw->data.dual_emac) {
		port_mask = (1 << (priv->emac_port + 1)) | ALE_PORT_HOST;

		mcast_mask = ALE_PORT_HOST;
		if (priv->ndev->flags & IFF_ALLMULTI)
			unreg_mcast_mask = mcast_mask;
	} else {
		port_mask = ALE_ALL_PORTS;
		mcast_mask = port_mask;

		if (priv->ndev->flags & IFF_ALLMULTI)
			unreg_mcast_mask = ALE_ALL_PORTS;
		else
			unreg_mcast_mask = ALE_PORT_1 | ALE_PORT_2;
	}

	ret = FUNC2(cpsw->ale, vid, port_mask, 0, port_mask,
				unreg_mcast_mask);
	if (ret != 0)
		return ret;

	ret = FUNC1(cpsw->ale, priv->mac_addr,
				 HOST_PORT_NUM, ALE_VLAN, vid);
	if (ret != 0)
		goto clean_vid;

	ret = FUNC0(cpsw->ale, priv->ndev->broadcast,
				 mcast_mask, ALE_VLAN, vid, 0);
	if (ret != 0)
		goto clean_vlan_ucast;
	return 0;

clean_vlan_ucast:
	FUNC3(cpsw->ale, priv->mac_addr,
			   HOST_PORT_NUM, ALE_VLAN, vid);
clean_vid:
	FUNC4(cpsw->ale, vid, 0);
	return ret;
}