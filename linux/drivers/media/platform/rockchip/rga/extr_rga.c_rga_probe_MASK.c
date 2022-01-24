#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;
typedef  struct TYPE_15__   TYPE_14__ ;

/* Type definitions */
struct video_device {int name; int /*<<< orphan*/ * v4l2_dev; int /*<<< orphan*/ * lock; } ;
struct TYPE_16__ {int major; int minor; } ;
struct rockchip_rga {unsigned int* src_mmu_pages; unsigned int* dst_mmu_pages; TYPE_3__* dev; int /*<<< orphan*/  v4l2_dev; struct video_device* vfd; int /*<<< orphan*/  cmdbuf_phy; int /*<<< orphan*/  cmdbuf_virt; TYPE_1__ version; int /*<<< orphan*/  m2m_dev; int /*<<< orphan*/  mutex; int /*<<< orphan*/  regs; int /*<<< orphan*/  ctrl_lock; } ;
struct resource {int dummy; } ;
struct TYPE_18__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_3__ dev; } ;
struct TYPE_17__ {int depth; } ;
struct TYPE_15__ {int stride; int width; int size; int height; TYPE_2__* fmt; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_ATTR_WRITE_COMBINE ; 
 int ENODEV ; 
 int ENOMEM ; 
 int GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RGA_CMDBUF_SIZE ; 
 int /*<<< orphan*/  RGA_VERSION_INFO ; 
 int /*<<< orphan*/  VFL_TYPE_GRABBER ; 
 int __GFP_ZERO ; 
 scalar_t__ FUNC2 (int,int) ; 
 TYPE_14__ def_frame ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,struct resource*) ; 
 struct rockchip_rga* FUNC6 (TYPE_3__*,int,int) ; 
 int FUNC7 (TYPE_3__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct rockchip_rga*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC11 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct platform_device*,struct rockchip_rga*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_3__*) ; 
 int /*<<< orphan*/  rga_isr ; 
 int /*<<< orphan*/  rga_m2m_ops ; 
 int FUNC17 (struct rockchip_rga*) ; 
 int FUNC18 (struct rockchip_rga*,int /*<<< orphan*/ ) ; 
 struct video_device rga_videodev ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int FUNC20 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,char*,int,int) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 struct video_device* FUNC25 () ; 
 int FUNC26 (struct video_device*) ; 
 int /*<<< orphan*/  FUNC27 (struct video_device*) ; 
 int FUNC28 (struct video_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC29 (struct video_device*,struct rockchip_rga*) ; 
 int /*<<< orphan*/  FUNC30 (struct video_device*) ; 

__attribute__((used)) static int FUNC31(struct platform_device *pdev)
{
	struct rockchip_rga *rga;
	struct video_device *vfd;
	struct resource *res;
	int ret = 0;
	int irq;

	if (!pdev->dev.of_node)
		return -ENODEV;

	rga = FUNC6(&pdev->dev, sizeof(*rga), GFP_KERNEL);
	if (!rga)
		return -ENOMEM;

	rga->dev = &pdev->dev;
	FUNC19(&rga->ctrl_lock);
	FUNC9(&rga->mutex);

	ret = FUNC17(rga);
	if (ret)
		FUNC3(&pdev->dev, "Unable to parse OF data\n");

	FUNC14(rga->dev);

	res = FUNC11(pdev, IORESOURCE_MEM, 0);

	rga->regs = FUNC5(rga->dev, res);
	if (FUNC0(rga->regs)) {
		ret = FUNC1(rga->regs);
		goto err_put_clk;
	}

	irq = FUNC10(pdev, 0);
	if (irq < 0) {
		ret = irq;
		goto err_put_clk;
	}

	ret = FUNC7(rga->dev, irq, rga_isr, 0,
			       FUNC4(rga->dev), rga);
	if (ret < 0) {
		FUNC3(rga->dev, "failed to request irq\n");
		goto err_put_clk;
	}

	ret = FUNC20(&pdev->dev, &rga->v4l2_dev);
	if (ret)
		goto err_put_clk;
	vfd = FUNC25();
	if (!vfd) {
		FUNC22(&rga->v4l2_dev, "Failed to allocate video device\n");
		ret = -ENOMEM;
		goto unreg_v4l2_dev;
	}
	*vfd = rga_videodev;
	vfd->lock = &rga->mutex;
	vfd->v4l2_dev = &rga->v4l2_dev;

	FUNC29(vfd, rga);
	rga->vfd = vfd;

	FUNC12(pdev, rga);
	rga->m2m_dev = FUNC24(&rga_m2m_ops);
	if (FUNC0(rga->m2m_dev)) {
		FUNC22(&rga->v4l2_dev, "Failed to init mem2mem device\n");
		ret = FUNC1(rga->m2m_dev);
		goto unreg_video_dev;
	}

	FUNC15(rga->dev);

	rga->version.major = (FUNC18(rga, RGA_VERSION_INFO) >> 24) & 0xFF;
	rga->version.minor = (FUNC18(rga, RGA_VERSION_INFO) >> 20) & 0x0F;

	FUNC23(&rga->v4l2_dev, "HW Version: 0x%02x.%02x\n",
		  rga->version.major, rga->version.minor);

	FUNC16(rga->dev);

	/* Create CMD buffer */
	rga->cmdbuf_virt = FUNC8(rga->dev, RGA_CMDBUF_SIZE,
					   &rga->cmdbuf_phy, GFP_KERNEL,
					   DMA_ATTR_WRITE_COMBINE);

	rga->src_mmu_pages =
		(unsigned int *)FUNC2(GFP_KERNEL | __GFP_ZERO, 3);
	rga->dst_mmu_pages =
		(unsigned int *)FUNC2(GFP_KERNEL | __GFP_ZERO, 3);

	def_frame.stride = (def_frame.width * def_frame.fmt->depth) >> 3;
	def_frame.size = def_frame.stride * def_frame.height;

	ret = FUNC28(vfd, VFL_TYPE_GRABBER, -1);
	if (ret) {
		FUNC22(&rga->v4l2_dev, "Failed to register video device\n");
		goto rel_vdev;
	}

	FUNC23(&rga->v4l2_dev, "Registered %s as /dev/%s\n",
		  vfd->name, FUNC26(vfd));

	return 0;

rel_vdev:
	FUNC27(vfd);
unreg_video_dev:
	FUNC30(rga->vfd);
unreg_v4l2_dev:
	FUNC21(&rga->v4l2_dev);
err_put_clk:
	FUNC13(rga->dev);

	return ret;
}