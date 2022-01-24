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
struct dpcon_attr {int dummy; } ;
struct dpaa2_eth_priv {int /*<<< orphan*/  mc_io; TYPE_2__* net_dev; } ;
struct device {int dummy; } ;
struct TYPE_4__ {struct device* parent; } ;
struct TYPE_5__ {TYPE_1__ dev; } ;

/* Variables and functions */
 int ENXIO ; 
 int EPROBE_DEFER ; 
 struct fsl_mc_device* FUNC0 (int) ; 
 int /*<<< orphan*/  FSL_MC_POOL_DPCON ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct dpcon_attr*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct fsl_mc_device**) ; 
 int /*<<< orphan*/  FUNC9 (struct fsl_mc_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct device*) ; 

__attribute__((used)) static struct fsl_mc_device *FUNC11(struct dpaa2_eth_priv *priv)
{
	struct fsl_mc_device *dpcon;
	struct device *dev = priv->net_dev->dev.parent;
	struct dpcon_attr attrs;
	int err;

	err = FUNC8(FUNC10(dev),
				     FSL_MC_POOL_DPCON, &dpcon);
	if (err) {
		if (err == -ENXIO)
			err = -EPROBE_DEFER;
		else
			FUNC2(dev, "Not enough DPCONs, will go on as-is\n");
		return FUNC0(err);
	}

	err = FUNC6(priv->mc_io, 0, dpcon->obj_desc.id, &dpcon->mc_handle);
	if (err) {
		FUNC1(dev, "dpcon_open() failed\n");
		goto free;
	}

	err = FUNC7(priv->mc_io, 0, dpcon->mc_handle);
	if (err) {
		FUNC1(dev, "dpcon_reset() failed\n");
		goto close;
	}

	err = FUNC5(priv->mc_io, 0, dpcon->mc_handle, &attrs);
	if (err) {
		FUNC1(dev, "dpcon_get_attributes() failed\n");
		goto close;
	}

	err = FUNC4(priv->mc_io, 0, dpcon->mc_handle);
	if (err) {
		FUNC1(dev, "dpcon_enable() failed\n");
		goto close;
	}

	return dpcon;

close:
	FUNC3(priv->mc_io, 0, dpcon->mc_handle);
free:
	FUNC9(dpcon);

	return NULL;
}