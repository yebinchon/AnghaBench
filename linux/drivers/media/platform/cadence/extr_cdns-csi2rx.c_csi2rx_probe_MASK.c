#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct platform_device {int /*<<< orphan*/  dev; } ;
struct TYPE_7__ {int /*<<< orphan*/  function; } ;
struct TYPE_6__ {TYPE_4__ entity; int /*<<< orphan*/  name; int /*<<< orphan*/ * dev; int /*<<< orphan*/  owner; } ;
struct csi2rx_priv {int /*<<< orphan*/  notifier; scalar_t__ has_internal_dphy; int /*<<< orphan*/  max_streams; int /*<<< orphan*/  max_lanes; int /*<<< orphan*/  num_lanes; TYPE_1__ subdev; TYPE_5__* pads; int /*<<< orphan*/  lock; int /*<<< orphan*/ * dev; } ;
struct TYPE_8__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 unsigned int CSI2RX_PAD_MAX ; 
 size_t CSI2RX_PAD_SINK ; 
 unsigned int CSI2RX_PAD_SOURCE_STREAM0 ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 char* KBUILD_MODNAME ; 
 int /*<<< orphan*/  MEDIA_ENT_F_VID_IF_BRIDGE ; 
 int /*<<< orphan*/  MEDIA_PAD_FL_SINK ; 
 int /*<<< orphan*/  MEDIA_PAD_FL_SOURCE ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  V4L2_SUBDEV_NAME_SIZE ; 
 int FUNC0 (struct csi2rx_priv*,struct platform_device*) ; 
 int FUNC1 (struct csi2rx_priv*) ; 
 int /*<<< orphan*/  csi2rx_subdev_ops ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct csi2rx_priv*) ; 
 struct csi2rx_priv* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_4__*,unsigned int,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct platform_device*,struct csi2rx_priv*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC14(struct platform_device *pdev)
{
	struct csi2rx_priv *csi2rx;
	unsigned int i;
	int ret;

	csi2rx = FUNC5(sizeof(*csi2rx), GFP_KERNEL);
	if (!csi2rx)
		return -ENOMEM;
	FUNC8(pdev, csi2rx);
	csi2rx->dev = &pdev->dev;
	FUNC7(&csi2rx->lock);

	ret = FUNC0(csi2rx, pdev);
	if (ret)
		goto err_free_priv;

	ret = FUNC1(csi2rx);
	if (ret)
		goto err_free_priv;

	csi2rx->subdev.owner = THIS_MODULE;
	csi2rx->subdev.dev = &pdev->dev;
	FUNC13(&csi2rx->subdev, &csi2rx_subdev_ops);
	FUNC12(&csi2rx->subdev, &pdev->dev);
	FUNC9(csi2rx->subdev.name, V4L2_SUBDEV_NAME_SIZE, "%s.%s",
		 KBUILD_MODNAME, FUNC3(&pdev->dev));

	/* Create our media pads */
	csi2rx->subdev.entity.function = MEDIA_ENT_F_VID_IF_BRIDGE;
	csi2rx->pads[CSI2RX_PAD_SINK].flags = MEDIA_PAD_FL_SINK;
	for (i = CSI2RX_PAD_SOURCE_STREAM0; i < CSI2RX_PAD_MAX; i++)
		csi2rx->pads[i].flags = MEDIA_PAD_FL_SOURCE;

	ret = FUNC6(&csi2rx->subdev.entity, CSI2RX_PAD_MAX,
				     csi2rx->pads);
	if (ret)
		goto err_cleanup;

	ret = FUNC11(&csi2rx->subdev);
	if (ret < 0)
		goto err_cleanup;

	FUNC2(&pdev->dev,
		 "Probed CSI2RX with %u/%u lanes, %u streams, %s D-PHY\n",
		 csi2rx->num_lanes, csi2rx->max_lanes, csi2rx->max_streams,
		 csi2rx->has_internal_dphy ? "internal" : "no");

	return 0;

err_cleanup:
	FUNC10(&csi2rx->notifier);
err_free_priv:
	FUNC4(csi2rx);
	return ret;
}