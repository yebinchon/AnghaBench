#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct nfp_repr {TYPE_4__* dst; TYPE_1__* port; } ;
struct TYPE_10__ {int ack; int requested_val; int /*<<< orphan*/  lock; int /*<<< orphan*/  wait_q; int /*<<< orphan*/  portnum; } ;
struct nfp_flower_priv {int flower_ext_feats; TYPE_5__ mtu_conf; } ;
struct nfp_app {int /*<<< orphan*/  cpp; struct nfp_flower_priv* priv; } ;
struct net_device {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  port_id; } ;
struct TYPE_8__ {TYPE_2__ port_info; } ;
struct TYPE_9__ {TYPE_3__ u; } ;
struct TYPE_6__ {scalar_t__ type; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int NFP_FL_NBI_MTU_SETTING ; 
 int /*<<< orphan*/  NFP_FL_REPLY_TIMEOUT ; 
 scalar_t__ NFP_PORT_PHYS_PORT ; 
 struct nfp_repr* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct nfp_flower_priv*) ; 
 int FUNC4 (struct nfp_repr*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(struct nfp_app *app, struct net_device *netdev,
			   int new_mtu)
{
	struct nfp_flower_priv *app_priv = app->priv;
	struct nfp_repr *repr = FUNC0(netdev);
	int err;

	/* Only need to config FW for physical port MTU change. */
	if (repr->port->type != NFP_PORT_PHYS_PORT)
		return 0;

	if (!(app_priv->flower_ext_feats & NFP_FL_NBI_MTU_SETTING)) {
		FUNC2(app->cpp, "Physical port MTU setting not supported\n");
		return -EINVAL;
	}

	FUNC6(&app_priv->mtu_conf.lock);
	app_priv->mtu_conf.ack = false;
	app_priv->mtu_conf.requested_val = new_mtu;
	app_priv->mtu_conf.portnum = repr->dst->u.port_info.port_id;
	FUNC7(&app_priv->mtu_conf.lock);

	err = FUNC4(repr, FUNC1(netdev), new_mtu,
				      true);
	if (err) {
		FUNC6(&app_priv->mtu_conf.lock);
		app_priv->mtu_conf.requested_val = 0;
		FUNC7(&app_priv->mtu_conf.lock);
		return err;
	}

	/* Wait for fw to ack the change. */
	if (!FUNC8(app_priv->mtu_conf.wait_q,
				FUNC3(app_priv),
				NFP_FL_REPLY_TIMEOUT)) {
		FUNC6(&app_priv->mtu_conf.lock);
		app_priv->mtu_conf.requested_val = 0;
		FUNC7(&app_priv->mtu_conf.lock);
		FUNC5(app->cpp, "MTU change not verified with fw\n");
		return -EIO;
	}

	return 0;
}