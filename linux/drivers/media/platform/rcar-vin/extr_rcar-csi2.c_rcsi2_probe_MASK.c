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
struct soc_device_attribute {int /*<<< orphan*/  data; } ;
struct TYPE_7__ {int /*<<< orphan*/ * ops; int /*<<< orphan*/  function; } ;
struct TYPE_6__ {TYPE_4__ entity; int /*<<< orphan*/  flags; int /*<<< orphan*/  name; int /*<<< orphan*/ * dev; int /*<<< orphan*/  owner; } ;
struct rcar_csi2 {int /*<<< orphan*/  notifier; int /*<<< orphan*/  lanes; int /*<<< orphan*/ * dev; TYPE_1__ subdev; TYPE_5__* pads; scalar_t__ stream_count; int /*<<< orphan*/  lock; int /*<<< orphan*/  info; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct TYPE_8__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 char* KBUILD_MODNAME ; 
 int /*<<< orphan*/  MEDIA_ENT_F_PROC_VIDEO_PIXEL_FORMATTER ; 
 int /*<<< orphan*/  MEDIA_PAD_FL_SINK ; 
 int /*<<< orphan*/  MEDIA_PAD_FL_SOURCE ; 
 unsigned int NR_OF_RCAR_CSI2_PAD ; 
 size_t RCAR_CSI2_SINK ; 
 unsigned int RCAR_CSI2_SOURCE_VC0 ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  V4L2_SUBDEV_FL_HAS_DEVNODE ; 
 int /*<<< orphan*/  V4L2_SUBDEV_NAME_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ *) ; 
 struct rcar_csi2* FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_4__*,unsigned int,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct platform_device*,struct rcar_csi2*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  r8a7795 ; 
 int /*<<< orphan*/  rcar_csi2_entity_ops ; 
 int /*<<< orphan*/  rcar_csi2_subdev_ops ; 
 int FUNC9 (struct rcar_csi2*) ; 
 int FUNC10 (struct rcar_csi2*,struct platform_device*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,char*) ; 
 struct soc_device_attribute* FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int FUNC15 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC18(struct platform_device *pdev)
{
	const struct soc_device_attribute *attr;
	struct rcar_csi2 *priv;
	unsigned int i;
	int ret;

	priv = FUNC3(&pdev->dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	priv->info = FUNC6(&pdev->dev);

	/*
	 * The different ES versions of r8a7795 (H3) behave differently but
	 * share the same compatible string.
	 */
	attr = FUNC12(r8a7795);
	if (attr)
		priv->info = attr->data;

	priv->dev = &pdev->dev;

	FUNC5(&priv->lock);
	priv->stream_count = 0;

	ret = FUNC10(priv, pdev);
	if (ret) {
		FUNC0(priv->dev, "Failed to get resources\n");
		return ret;
	}

	FUNC7(pdev, priv);

	ret = FUNC9(priv);
	if (ret)
		return ret;

	priv->subdev.owner = THIS_MODULE;
	priv->subdev.dev = &pdev->dev;
	FUNC17(&priv->subdev, &rcar_csi2_subdev_ops);
	FUNC16(&priv->subdev, &pdev->dev);
	FUNC11(priv->subdev.name, V4L2_SUBDEV_NAME_SIZE, "%s %s",
		 KBUILD_MODNAME, FUNC2(&pdev->dev));
	priv->subdev.flags = V4L2_SUBDEV_FL_HAS_DEVNODE;

	priv->subdev.entity.function = MEDIA_ENT_F_PROC_VIDEO_PIXEL_FORMATTER;
	priv->subdev.entity.ops = &rcar_csi2_entity_ops;

	priv->pads[RCAR_CSI2_SINK].flags = MEDIA_PAD_FL_SINK;
	for (i = RCAR_CSI2_SOURCE_VC0; i < NR_OF_RCAR_CSI2_PAD; i++)
		priv->pads[i].flags = MEDIA_PAD_FL_SOURCE;

	ret = FUNC4(&priv->subdev.entity, NR_OF_RCAR_CSI2_PAD,
				     priv->pads);
	if (ret)
		goto error;

	FUNC8(&pdev->dev);

	ret = FUNC15(&priv->subdev);
	if (ret < 0)
		goto error;

	FUNC1(priv->dev, "%d lanes found\n", priv->lanes);

	return 0;

error:
	FUNC14(&priv->notifier);
	FUNC13(&priv->notifier);

	return ret;
}