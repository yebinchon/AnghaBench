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
typedef  scalar_t__ u16 ;
struct net_device {int dummy; } ;
struct cpsw_priv {int /*<<< orphan*/  dev; struct cpsw_common* cpsw; } ;
struct TYPE_3__ {scalar_t__ default_vlan; int slaves; scalar_t__ dual_emac; } ;
struct cpsw_common {int /*<<< orphan*/  dev; TYPE_2__* slaves; TYPE_1__ data; } ;
typedef  int /*<<< orphan*/  __be16 ;
struct TYPE_4__ {scalar_t__ port_vlan; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct cpsw_priv*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 struct cpsw_priv* FUNC2 (struct net_device*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct net_device *ndev,
				    __be16 proto, u16 vid)
{
	struct cpsw_priv *priv = FUNC2(ndev);
	struct cpsw_common *cpsw = priv->cpsw;
	int ret;

	if (vid == cpsw->data.default_vlan)
		return 0;

	ret = FUNC3(cpsw->dev);
	if (ret < 0) {
		FUNC5(cpsw->dev);
		return ret;
	}

	if (cpsw->data.dual_emac) {
		/* In dual EMAC, reserved VLAN id should not be used for
		 * creating VLAN interfaces as this can break the dual
		 * EMAC port separation
		 */
		int i;

		for (i = 0; i < cpsw->data.slaves; i++) {
			if (vid == cpsw->slaves[i].port_vlan) {
				ret = -EINVAL;
				goto err;
			}
		}
	}

	FUNC1(priv->dev, "Adding vlanid %d to vlan filter\n", vid);
	ret = FUNC0(priv, vid);
err:
	FUNC4(cpsw->dev);
	return ret;
}