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
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_5__ dev; } ;
struct of_device_id {scalar_t__ data; } ;
struct csi2tx_vops {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  function; } ;
struct TYPE_7__ {TYPE_3__ entity; int /*<<< orphan*/  name; int /*<<< orphan*/  flags; TYPE_5__* dev; int /*<<< orphan*/  owner; } ;
struct csi2tx_priv {scalar_t__ has_internal_dphy; int /*<<< orphan*/  max_streams; int /*<<< orphan*/  max_lanes; int /*<<< orphan*/  num_lanes; TYPE_1__ subdev; TYPE_4__* pads; int /*<<< orphan*/ * pad_fmts; struct csi2tx_vops* vops; TYPE_5__* dev; int /*<<< orphan*/  lock; } ;
struct TYPE_9__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 unsigned int CSI2TX_PAD_MAX ; 
 unsigned int CSI2TX_PAD_SINK_STREAM0 ; 
 size_t CSI2TX_PAD_SOURCE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 char* KBUILD_MODNAME ; 
 int /*<<< orphan*/  MEDIA_ENT_F_VID_IF_BRIDGE ; 
 int /*<<< orphan*/  MEDIA_PAD_FL_SINK ; 
 int /*<<< orphan*/  MEDIA_PAD_FL_SOURCE ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  V4L2_SUBDEV_FL_HAS_DEVNODE ; 
 int /*<<< orphan*/  V4L2_SUBDEV_NAME_SIZE ; 
 int FUNC0 (struct csi2tx_priv*) ; 
 int FUNC1 (struct csi2tx_priv*,struct platform_device*) ; 
 int /*<<< orphan*/  csi2tx_of_table ; 
 int /*<<< orphan*/  csi2tx_subdev_ops ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 char* FUNC3 (TYPE_5__*) ; 
 int /*<<< orphan*/  fmt_default ; 
 int /*<<< orphan*/  FUNC4 (struct csi2tx_priv*) ; 
 struct csi2tx_priv* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_3__*,unsigned int,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct of_device_id* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct platform_device*,struct csi2tx_priv*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,char*) ; 
 int FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13(struct platform_device *pdev)
{
	struct csi2tx_priv *csi2tx;
	const struct of_device_id *of_id;
	unsigned int i;
	int ret;

	csi2tx = FUNC5(sizeof(*csi2tx), GFP_KERNEL);
	if (!csi2tx)
		return -ENOMEM;
	FUNC9(pdev, csi2tx);
	FUNC7(&csi2tx->lock);
	csi2tx->dev = &pdev->dev;

	ret = FUNC1(csi2tx, pdev);
	if (ret)
		goto err_free_priv;

	of_id = FUNC8(csi2tx_of_table, pdev->dev.of_node);
	csi2tx->vops = (struct csi2tx_vops *)of_id->data;

	FUNC12(&csi2tx->subdev, &csi2tx_subdev_ops);
	csi2tx->subdev.owner = THIS_MODULE;
	csi2tx->subdev.dev = &pdev->dev;
	csi2tx->subdev.flags |= V4L2_SUBDEV_FL_HAS_DEVNODE;
	FUNC10(csi2tx->subdev.name, V4L2_SUBDEV_NAME_SIZE, "%s.%s",
		 KBUILD_MODNAME, FUNC3(&pdev->dev));

	ret = FUNC0(csi2tx);
	if (ret)
		goto err_free_priv;

	/* Create our media pads */
	csi2tx->subdev.entity.function = MEDIA_ENT_F_VID_IF_BRIDGE;
	csi2tx->pads[CSI2TX_PAD_SOURCE].flags = MEDIA_PAD_FL_SOURCE;
	for (i = CSI2TX_PAD_SINK_STREAM0; i < CSI2TX_PAD_MAX; i++)
		csi2tx->pads[i].flags = MEDIA_PAD_FL_SINK;

	/*
	 * Only the input pads are considered to have a format at the
	 * moment. The CSI link can multiplex various streams with
	 * different formats, and we can't expose this in v4l2 right
	 * now.
	 */
	for (i = CSI2TX_PAD_SINK_STREAM0; i < CSI2TX_PAD_MAX; i++)
		csi2tx->pad_fmts[i] = fmt_default;

	ret = FUNC6(&csi2tx->subdev.entity, CSI2TX_PAD_MAX,
				     csi2tx->pads);
	if (ret)
		goto err_free_priv;

	ret = FUNC11(&csi2tx->subdev);
	if (ret < 0)
		goto err_free_priv;

	FUNC2(&pdev->dev,
		 "Probed CSI2TX with %u/%u lanes, %u streams, %s D-PHY\n",
		 csi2tx->num_lanes, csi2tx->max_lanes, csi2tx->max_streams,
		 csi2tx->has_internal_dphy ? "internal" : "no");

	return 0;

err_free_priv:
	FUNC4(csi2tx);
	return ret;
}