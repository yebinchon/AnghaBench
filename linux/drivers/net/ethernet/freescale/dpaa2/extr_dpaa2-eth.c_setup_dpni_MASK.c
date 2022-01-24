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
struct net_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  id; } ;
struct device {int dummy; } ;
struct fsl_mc_device {int /*<<< orphan*/  mc_handle; int /*<<< orphan*/  mc_io; TYPE_1__ obj_desc; struct device dev; } ;
struct dpaa2_eth_priv {int /*<<< orphan*/  mc_token; int /*<<< orphan*/  mc_io; int /*<<< orphan*/  cls_rules; int /*<<< orphan*/  dpni_attrs; int /*<<< orphan*/  dpni_ver_minor; int /*<<< orphan*/  dpni_ver_major; } ;
struct dpaa2_eth_cls_rule {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DPNI_VER_MAJOR ; 
 int /*<<< orphan*/  DPNI_VER_MINOR ; 
 int ENOTSUPP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,...) ; 
 struct net_device* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct dpaa2_eth_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct dpaa2_eth_priv*) ; 
 scalar_t__ FUNC5 (struct dpaa2_eth_priv*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct dpaa2_eth_priv* FUNC11 (struct net_device*) ; 
 int FUNC12 (struct dpaa2_eth_priv*) ; 
 int /*<<< orphan*/  FUNC13 (struct dpaa2_eth_priv*) ; 
 int FUNC14 (struct dpaa2_eth_priv*) ; 

__attribute__((used)) static int FUNC15(struct fsl_mc_device *ls_dev)
{
	struct device *dev = &ls_dev->dev;
	struct dpaa2_eth_priv *priv;
	struct net_device *net_dev;
	int err;

	net_dev = FUNC1(dev);
	priv = FUNC11(net_dev);

	/* get a handle for the DPNI object */
	err = FUNC9(priv->mc_io, 0, ls_dev->obj_desc.id, &priv->mc_token);
	if (err) {
		FUNC0(dev, "dpni_open() failed\n");
		return err;
	}

	/* Check if we can work with this DPNI object */
	err = FUNC7(priv->mc_io, 0, &priv->dpni_ver_major,
				   &priv->dpni_ver_minor);
	if (err) {
		FUNC0(dev, "dpni_get_api_version() failed\n");
		goto close;
	}
	if (FUNC3(priv, DPNI_VER_MAJOR, DPNI_VER_MINOR) < 0) {
		FUNC0(dev, "DPNI version %u.%u not supported, need >= %u.%u\n",
			priv->dpni_ver_major, priv->dpni_ver_minor,
			DPNI_VER_MAJOR, DPNI_VER_MINOR);
		err = -ENOTSUPP;
		goto close;
	}

	ls_dev->mc_io = priv->mc_io;
	ls_dev->mc_handle = priv->mc_token;

	err = FUNC10(priv->mc_io, 0, priv->mc_token);
	if (err) {
		FUNC0(dev, "dpni_reset() failed\n");
		goto close;
	}

	err = FUNC8(priv->mc_io, 0, priv->mc_token,
				  &priv->dpni_attrs);
	if (err) {
		FUNC0(dev, "dpni_get_attributes() failed (err=%d)\n", err);
		goto close;
	}

	err = FUNC12(priv);
	if (err)
		goto close;

	FUNC13(priv);

	/* Enable pause frame support */
	if (FUNC5(priv)) {
		err = FUNC14(priv);
		if (err)
			goto close;
	}

	priv->cls_rules = FUNC2(dev, sizeof(struct dpaa2_eth_cls_rule) *
				       FUNC4(priv), GFP_KERNEL);
	if (!priv->cls_rules)
		goto close;

	return 0;

close:
	FUNC6(priv->mc_io, 0, priv->mc_token);

	return err;
}