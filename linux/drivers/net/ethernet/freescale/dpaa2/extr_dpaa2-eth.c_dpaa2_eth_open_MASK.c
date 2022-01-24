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
struct net_device {int dummy; } ;
struct dpaa2_eth_priv {int /*<<< orphan*/  mc_token; int /*<<< orphan*/  mc_io; int /*<<< orphan*/  bpid; TYPE_1__* dpbp_dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  id; } ;
struct TYPE_3__ {TYPE_2__ obj_desc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dpaa2_eth_priv*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dpaa2_eth_priv*) ; 
 int /*<<< orphan*/  FUNC3 (struct dpaa2_eth_priv*) ; 
 int FUNC4 (struct dpaa2_eth_priv*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,char*,...) ; 
 struct dpaa2_eth_priv* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 int FUNC9 (struct dpaa2_eth_priv*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct net_device *net_dev)
{
	struct dpaa2_eth_priv *priv = FUNC6(net_dev);
	int err;

	err = FUNC9(priv, priv->bpid);
	if (err) {
		/* Not much to do; the buffer pool, though not filled up,
		 * may still contain some buffers which would enable us
		 * to limp on.
		 */
		FUNC5(net_dev, "Buffer seeding failed for DPBP %d (bpid=%d)\n",
			   priv->dpbp_dev->obj_desc.id, priv->bpid);
	}

	/* We'll only start the txqs when the link is actually ready; make sure
	 * we don't race against the link up notification, which may come
	 * immediately after dpni_enable();
	 */
	FUNC8(net_dev);
	FUNC3(priv);
	/* Also, explicitly set carrier off, otherwise netif_carrier_ok() will
	 * return true and cause 'ip link show' to report the LOWER_UP flag,
	 * even though the link notification wasn't even received.
	 */
	FUNC7(net_dev);

	err = FUNC1(priv->mc_io, 0, priv->mc_token);
	if (err < 0) {
		FUNC5(net_dev, "dpni_enable() failed\n");
		goto enable_err;
	}

	/* If the DPMAC object has already processed the link up interrupt,
	 * we have to learn the link state ourselves.
	 */
	err = FUNC4(priv);
	if (err < 0) {
		FUNC5(net_dev, "Can't update link state\n");
		goto link_state_err;
	}

	return 0;

link_state_err:
enable_err:
	FUNC0(priv);
	FUNC2(priv);
	return err;
}