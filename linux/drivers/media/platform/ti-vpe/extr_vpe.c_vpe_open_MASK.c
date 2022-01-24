#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int width; int height; scalar_t__ top; scalar_t__ left; } ;
struct vpe_q_data {int width; int height; int nplanes; int* bytesperline; int* sizeimage; scalar_t__ flags; TYPE_2__ c_rect; int /*<<< orphan*/  field; int /*<<< orphan*/  colorspace; TYPE_3__* fmt; } ;
struct vpe_mmr_adb {int dummy; } ;
struct vpe_dev {int /*<<< orphan*/  dev_mutex; int /*<<< orphan*/  num_instances; int /*<<< orphan*/  m2m_dev; } ;
struct TYPE_10__ {int /*<<< orphan*/  m2m_ctx; struct v4l2_ctrl_handler* ctrl_handler; } ;
struct v4l2_ctrl_handler {int error; } ;
struct vpe_ctx {int load_mmrs; int /*<<< orphan*/  desc_list; int /*<<< orphan*/  mmr_adb; int /*<<< orphan*/  sc_coeff_h; int /*<<< orphan*/  sc_coeff_v; TYPE_4__ fh; int /*<<< orphan*/  bufs_per_job; struct vpe_q_data* q_data; struct v4l2_ctrl_handler hdl; struct vpe_dev* dev; } ;
struct file {TYPE_4__* private_data; } ;
struct TYPE_9__ {TYPE_1__** vpdma_fmt; } ;
struct TYPE_7__ {int depth; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ERESTARTSYS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 size_t Q_DATA_DST ; 
 size_t Q_DATA_SRC ; 
 int SC_COEF_SRAM_SIZE ; 
 int /*<<< orphan*/  V4L2_COLORSPACE_REC709 ; 
 int /*<<< orphan*/  V4L2_FIELD_NONE ; 
 int /*<<< orphan*/  VPDMA_LIST_TYPE_NORMAL ; 
 int /*<<< orphan*/  VPE_DEF_BUFS_PER_JOB ; 
 int /*<<< orphan*/  VPE_DESC_LIST_SIZE ; 
 size_t VPE_LUMA ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct vpe_ctx*) ; 
 int /*<<< orphan*/  FUNC4 (struct vpe_ctx*) ; 
 struct vpe_ctx* FUNC5 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  queue_init ; 
 int /*<<< orphan*/  FUNC8 (struct vpe_ctx*) ; 
 int /*<<< orphan*/  FUNC9 (struct vpe_ctx*) ; 
 int /*<<< orphan*/  FUNC10 (struct vpe_ctx*) ; 
 int FUNC11 (struct vpe_ctx*) ; 
 int /*<<< orphan*/  FUNC12 (struct v4l2_ctrl_handler*) ; 
 int /*<<< orphan*/  FUNC13 (struct v4l2_ctrl_handler*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct v4l2_ctrl_handler*) ; 
 int /*<<< orphan*/  FUNC15 (struct v4l2_ctrl_handler*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,struct vpe_ctx*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (struct file*) ; 
 struct vpe_dev* FUNC21 (struct file*) ; 
 int FUNC22 (int /*<<< orphan*/ *,int) ; 
 int FUNC23 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vpe_bufs_per_job ; 
 int /*<<< orphan*/  FUNC26 (struct vpe_dev*,char*,...) ; 
 TYPE_3__* vpe_formats ; 

__attribute__((used)) static int FUNC27(struct file *file)
{
	struct vpe_dev *dev = FUNC21(file);
	struct vpe_q_data *s_q_data;
	struct v4l2_ctrl_handler *hdl;
	struct vpe_ctx *ctx;
	int ret;

	FUNC26(dev, "vpe_open\n");

	ctx = FUNC5(sizeof(*ctx), GFP_KERNEL);
	if (!ctx)
		return -ENOMEM;

	ctx->dev = dev;

	if (FUNC6(&dev->dev_mutex)) {
		ret = -ERESTARTSYS;
		goto free_ctx;
	}

	ret = FUNC23(&ctx->desc_list, VPE_DESC_LIST_SIZE,
			VPDMA_LIST_TYPE_NORMAL);
	if (ret != 0)
		goto unlock;

	ret = FUNC22(&ctx->mmr_adb, sizeof(struct vpe_mmr_adb));
	if (ret != 0)
		goto free_desc_list;

	ret = FUNC22(&ctx->sc_coeff_h, SC_COEF_SRAM_SIZE);
	if (ret != 0)
		goto free_mmr_adb;

	ret = FUNC22(&ctx->sc_coeff_v, SC_COEF_SRAM_SIZE);
	if (ret != 0)
		goto free_sc_h;

	FUNC3(ctx);

	FUNC18(&ctx->fh, FUNC20(file));
	file->private_data = &ctx->fh;

	hdl = &ctx->hdl;
	FUNC13(hdl, 1);
	FUNC15(hdl, &vpe_bufs_per_job, NULL);
	if (hdl->error) {
		ret = hdl->error;
		goto exit_fh;
	}
	ctx->fh.ctrl_handler = hdl;
	FUNC14(hdl);

	s_q_data = &ctx->q_data[Q_DATA_SRC];
	s_q_data->fmt = &vpe_formats[2];
	s_q_data->width = 1920;
	s_q_data->height = 1080;
	s_q_data->nplanes = 1;
	s_q_data->bytesperline[VPE_LUMA] = (s_q_data->width *
			s_q_data->fmt->vpdma_fmt[VPE_LUMA]->depth) >> 3;
	s_q_data->sizeimage[VPE_LUMA] = (s_q_data->bytesperline[VPE_LUMA] *
			s_q_data->height);
	s_q_data->colorspace = V4L2_COLORSPACE_REC709;
	s_q_data->field = V4L2_FIELD_NONE;
	s_q_data->c_rect.left = 0;
	s_q_data->c_rect.top = 0;
	s_q_data->c_rect.width = s_q_data->width;
	s_q_data->c_rect.height = s_q_data->height;
	s_q_data->flags = 0;

	ctx->q_data[Q_DATA_DST] = *s_q_data;

	FUNC8(ctx);
	FUNC10(ctx);
	FUNC9(ctx);
	ret = FUNC11(ctx);
	if (ret)
		goto exit_fh;

	ctx->fh.m2m_ctx = FUNC19(dev->m2m_dev, ctx, &queue_init);

	if (FUNC0(ctx->fh.m2m_ctx)) {
		ret = FUNC1(ctx->fh.m2m_ctx);
		goto exit_fh;
	}

	FUNC16(&ctx->fh);

	/*
	 * for now, just report the creation of the first instance, we can later
	 * optimize the driver to enable or disable clocks when the first
	 * instance is created or the last instance released
	 */
	if (FUNC2(&dev->num_instances) == 1)
		FUNC26(dev, "first instance created\n");

	ctx->bufs_per_job = VPE_DEF_BUFS_PER_JOB;

	ctx->load_mmrs = true;

	FUNC26(dev, "created instance %p, m2m_ctx: %p\n",
		ctx, ctx->fh.m2m_ctx);

	FUNC7(&dev->dev_mutex);

	return 0;
exit_fh:
	FUNC12(hdl);
	FUNC17(&ctx->fh);
	FUNC24(&ctx->sc_coeff_v);
free_sc_h:
	FUNC24(&ctx->sc_coeff_h);
free_mmr_adb:
	FUNC24(&ctx->mmr_adb);
free_desc_list:
	FUNC25(&ctx->desc_list);
unlock:
	FUNC7(&dev->dev_mutex);
free_ctx:
	FUNC4(ctx);
	return ret;
}