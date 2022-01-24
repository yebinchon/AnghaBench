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
struct TYPE_6__ {int /*<<< orphan*/  id; } ;
struct fsl_mc_device {int /*<<< orphan*/  mc_handle; TYPE_3__ obj_desc; } ;
struct dpbp_attr {int /*<<< orphan*/  bpid; } ;
struct dpaa2_eth_priv {int /*<<< orphan*/  mc_io; int /*<<< orphan*/  bpid; struct fsl_mc_device* dpbp_dev; TYPE_2__* net_dev; } ;
struct device {int dummy; } ;
struct TYPE_4__ {struct device* parent; } ;
struct TYPE_5__ {TYPE_1__ dev; } ;

/* Variables and functions */
 int ENXIO ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  FSL_MC_POOL_DPBP ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct dpbp_attr*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct fsl_mc_device**) ; 
 int /*<<< orphan*/  FUNC8 (struct fsl_mc_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct device*) ; 

__attribute__((used)) static int FUNC10(struct dpaa2_eth_priv *priv)
{
	int err;
	struct fsl_mc_device *dpbp_dev;
	struct device *dev = priv->net_dev->dev.parent;
	struct dpbp_attr dpbp_attrs;

	err = FUNC7(FUNC9(dev), FSL_MC_POOL_DPBP,
				     &dpbp_dev);
	if (err) {
		if (err == -ENXIO)
			err = -EPROBE_DEFER;
		else
			FUNC0(dev, "DPBP device allocation failed\n");
		return err;
	}

	priv->dpbp_dev = dpbp_dev;

	err = FUNC5(priv->mc_io, 0, priv->dpbp_dev->obj_desc.id,
			&dpbp_dev->mc_handle);
	if (err) {
		FUNC0(dev, "dpbp_open() failed\n");
		goto err_open;
	}

	err = FUNC6(priv->mc_io, 0, dpbp_dev->mc_handle);
	if (err) {
		FUNC0(dev, "dpbp_reset() failed\n");
		goto err_reset;
	}

	err = FUNC3(priv->mc_io, 0, dpbp_dev->mc_handle);
	if (err) {
		FUNC0(dev, "dpbp_enable() failed\n");
		goto err_enable;
	}

	err = FUNC4(priv->mc_io, 0, dpbp_dev->mc_handle,
				  &dpbp_attrs);
	if (err) {
		FUNC0(dev, "dpbp_get_attributes() failed\n");
		goto err_get_attr;
	}
	priv->bpid = dpbp_attrs.bpid;

	return 0;

err_get_attr:
	FUNC2(priv->mc_io, 0, dpbp_dev->mc_handle);
err_enable:
err_reset:
	FUNC1(priv->mc_io, 0, dpbp_dev->mc_handle);
err_open:
	FUNC8(dpbp_dev);

	return err;
}