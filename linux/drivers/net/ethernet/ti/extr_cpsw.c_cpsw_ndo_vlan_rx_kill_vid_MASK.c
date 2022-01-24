#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u16 ;
struct net_device {int dummy; } ;
struct cpsw_priv {TYPE_3__* ndev; int /*<<< orphan*/  mac_addr; int /*<<< orphan*/  dev; struct cpsw_common* cpsw; } ;
struct TYPE_4__ {scalar_t__ default_vlan; int slaves; scalar_t__ dual_emac; } ;
struct cpsw_common {int /*<<< orphan*/  dev; int /*<<< orphan*/  ale; TYPE_2__* slaves; TYPE_1__ data; } ;
typedef  int /*<<< orphan*/  __be16 ;
struct TYPE_6__ {int /*<<< orphan*/  broadcast; } ;
struct TYPE_5__ {scalar_t__ port_vlan; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALE_VLAN ; 
 int /*<<< orphan*/  HOST_PORT_NUM ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC2 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 struct cpsw_priv* FUNC5 (struct net_device*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct net_device *ndev,
				     __be16 proto, u16 vid)
{
	struct cpsw_priv *priv = FUNC5(ndev);
	struct cpsw_common *cpsw = priv->cpsw;
	int ret;

	if (vid == cpsw->data.default_vlan)
		return 0;

	ret = FUNC6(cpsw->dev);
	if (ret < 0) {
		FUNC8(cpsw->dev);
		return ret;
	}

	if (cpsw->data.dual_emac) {
		int i;

		for (i = 0; i < cpsw->data.slaves; i++) {
			if (vid == cpsw->slaves[i].port_vlan)
				goto err;
		}
	}

	FUNC4(priv->dev, "removing vlanid %d from vlan filter\n", vid);
	ret = FUNC2(cpsw->ale, vid, 0);
	ret |= FUNC1(cpsw->ale, priv->mac_addr,
				  HOST_PORT_NUM, ALE_VLAN, vid);
	ret |= FUNC0(cpsw->ale, priv->ndev->broadcast,
				  0, ALE_VLAN, vid);
	ret |= FUNC3(cpsw->ale, 0, vid);
err:
	FUNC7(cpsw->dev);
	return ret;
}