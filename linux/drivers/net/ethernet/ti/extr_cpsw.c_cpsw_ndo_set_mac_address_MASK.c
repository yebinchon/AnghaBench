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
typedef  int /*<<< orphan*/  u16 ;
struct sockaddr {int /*<<< orphan*/  sa_data; } ;
struct net_device {int /*<<< orphan*/  dev_addr; } ;
struct cpsw_priv {size_t emac_port; int /*<<< orphan*/  mac_addr; struct cpsw_common* cpsw; } ;
struct TYPE_3__ {scalar_t__ dual_emac; } ;
struct cpsw_common {int /*<<< orphan*/  dev; int /*<<< orphan*/  ale; TYPE_2__* slaves; TYPE_1__ data; } ;
struct TYPE_4__ {int /*<<< orphan*/  port_vlan; } ;

/* Variables and functions */
 int ALE_VLAN ; 
 int EADDRNOTAVAIL ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  HOST_PORT_NUM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cpsw_set_slave_mac ; 
 int /*<<< orphan*/  FUNC2 (struct cpsw_priv*,int /*<<< orphan*/ ,struct cpsw_priv*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct cpsw_priv* FUNC5 (struct net_device*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct net_device *ndev, void *p)
{
	struct cpsw_priv *priv = FUNC5(ndev);
	struct sockaddr *addr = (struct sockaddr *)p;
	struct cpsw_common *cpsw = priv->cpsw;
	int flags = 0;
	u16 vid = 0;
	int ret;

	if (!FUNC3(addr->sa_data))
		return -EADDRNOTAVAIL;

	ret = FUNC6(cpsw->dev);
	if (ret < 0) {
		FUNC8(cpsw->dev);
		return ret;
	}

	if (cpsw->data.dual_emac) {
		vid = cpsw->slaves[priv->emac_port].port_vlan;
		flags = ALE_VLAN;
	}

	FUNC1(cpsw->ale, priv->mac_addr, HOST_PORT_NUM,
			   flags, vid);
	FUNC0(cpsw->ale, addr->sa_data, HOST_PORT_NUM,
			   flags, vid);

	FUNC4(priv->mac_addr, addr->sa_data, ETH_ALEN);
	FUNC4(ndev->dev_addr, priv->mac_addr, ETH_ALEN);
	FUNC2(priv, cpsw_set_slave_mac, priv);

	FUNC7(cpsw->dev);

	return 0;
}