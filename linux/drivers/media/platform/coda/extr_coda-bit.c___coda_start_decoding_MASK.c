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
typedef  scalar_t__ u32 ;
struct TYPE_7__ {int /*<<< orphan*/  width; } ;
struct coda_q_data {scalar_t__ fourcc; TYPE_2__ rect; } ;
struct coda_dev {int /*<<< orphan*/  v4l2_dev; TYPE_5__* devtype; } ;
struct TYPE_9__ {int paddr; int size; } ;
struct TYPE_8__ {int buf_bit_use; int buf_ip_ac_dc_use; int buf_dbk_y_use; int buf_dbk_c_use; int buf_ovl_use; int buf_btp_use; } ;
struct TYPE_6__ {int paddr; } ;
struct coda_ctx {int num_internal_frames; struct coda_dev* dev; TYPE_4__ slicebuf; TYPE_3__ iram_info; TYPE_1__ parabuf; int /*<<< orphan*/  initialized; } ;
struct TYPE_10__ {scalar_t__ product; } ;

/* Variables and functions */
 int /*<<< orphan*/  CODA7_CMD_SET_FRAME_AXI_BIT_ADDR ; 
 int /*<<< orphan*/  CODA7_CMD_SET_FRAME_AXI_DBKC_ADDR ; 
 int /*<<< orphan*/  CODA7_CMD_SET_FRAME_AXI_DBKY_ADDR ; 
 int /*<<< orphan*/  CODA7_CMD_SET_FRAME_AXI_IPACDC_ADDR ; 
 int /*<<< orphan*/  CODA7_CMD_SET_FRAME_AXI_OVL_ADDR ; 
 int /*<<< orphan*/  CODA7_CMD_SET_FRAME_MAX_DEC_SIZE ; 
 int /*<<< orphan*/  CODA9_CMD_SET_FRAME_AXI_BTP_ADDR ; 
 int /*<<< orphan*/  CODA9_CMD_SET_FRAME_DELAY ; 
 int /*<<< orphan*/  CODA9_CMD_SET_FRAME_MAX_DEC_SIZE ; 
 scalar_t__ CODA_7541 ; 
 scalar_t__ CODA_960 ; 
 int /*<<< orphan*/  CODA_CMD_SET_FRAME_BUF_NUM ; 
 int /*<<< orphan*/  CODA_CMD_SET_FRAME_BUF_STRIDE ; 
 int /*<<< orphan*/  CODA_CMD_SET_FRAME_SLICE_BB_SIZE ; 
 int /*<<< orphan*/  CODA_CMD_SET_FRAME_SLICE_BB_START ; 
 int /*<<< orphan*/  CODA_COMMAND_SET_FRAME_BUF ; 
 scalar_t__ CODA_DX6 ; 
 scalar_t__ CODA_HX4 ; 
 int /*<<< orphan*/  CODA_REG_BIT_PARA_BUF_ADDR ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  V4L2_BUF_TYPE_VIDEO_CAPTURE ; 
 int /*<<< orphan*/  V4L2_BUF_TYPE_VIDEO_OUTPUT ; 
 scalar_t__ V4L2_PIX_FMT_H264 ; 
 int FUNC0 (struct coda_ctx*) ; 
 int /*<<< orphan*/  FUNC1 (struct coda_ctx*,scalar_t__) ; 
 int FUNC2 (struct coda_ctx*,struct coda_q_data*,scalar_t__) ; 
 scalar_t__ FUNC3 (struct coda_ctx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct coda_ctx*) ; 
 int /*<<< orphan*/  FUNC5 (struct coda_dev*,int,int /*<<< orphan*/ ) ; 
 struct coda_q_data* FUNC6 (struct coda_ctx*,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int FUNC9(struct coda_ctx *ctx)
{
	struct coda_q_data *q_data_src, *q_data_dst;
	struct coda_dev *dev = ctx->dev;
	u32 src_fourcc, dst_fourcc;
	int ret;

	if (!ctx->initialized) {
		ret = FUNC0(ctx);
		if (ret < 0)
			return ret;
	}

	q_data_src = FUNC6(ctx, V4L2_BUF_TYPE_VIDEO_OUTPUT);
	q_data_dst = FUNC6(ctx, V4L2_BUF_TYPE_VIDEO_CAPTURE);
	src_fourcc = q_data_src->fourcc;
	dst_fourcc = q_data_dst->fourcc;

	FUNC5(dev, ctx->parabuf.paddr, CODA_REG_BIT_PARA_BUF_ADDR);

	ret = FUNC2(ctx, q_data_dst, src_fourcc);
	if (ret < 0) {
		FUNC8(&dev->v4l2_dev, "failed to allocate framebuffers\n");
		return ret;
	}

	/* Tell the decoder how many frame buffers we allocated. */
	FUNC5(dev, ctx->num_internal_frames, CODA_CMD_SET_FRAME_BUF_NUM);
	FUNC5(dev, FUNC7(q_data_dst->rect.width, 16),
		   CODA_CMD_SET_FRAME_BUF_STRIDE);

	if (dev->devtype->product != CODA_DX6) {
		/* Set secondary AXI IRAM */
		FUNC4(ctx);

		FUNC5(dev, ctx->iram_info.buf_bit_use,
				CODA7_CMD_SET_FRAME_AXI_BIT_ADDR);
		FUNC5(dev, ctx->iram_info.buf_ip_ac_dc_use,
				CODA7_CMD_SET_FRAME_AXI_IPACDC_ADDR);
		FUNC5(dev, ctx->iram_info.buf_dbk_y_use,
				CODA7_CMD_SET_FRAME_AXI_DBKY_ADDR);
		FUNC5(dev, ctx->iram_info.buf_dbk_c_use,
				CODA7_CMD_SET_FRAME_AXI_DBKC_ADDR);
		FUNC5(dev, ctx->iram_info.buf_ovl_use,
				CODA7_CMD_SET_FRAME_AXI_OVL_ADDR);
		if (dev->devtype->product == CODA_960) {
			FUNC5(dev, ctx->iram_info.buf_btp_use,
					CODA9_CMD_SET_FRAME_AXI_BTP_ADDR);

			FUNC5(dev, -1, CODA9_CMD_SET_FRAME_DELAY);
			FUNC1(ctx, dst_fourcc);
		}
	}

	if (src_fourcc == V4L2_PIX_FMT_H264) {
		FUNC5(dev, ctx->slicebuf.paddr,
				CODA_CMD_SET_FRAME_SLICE_BB_START);
		FUNC5(dev, ctx->slicebuf.size / 1024,
				CODA_CMD_SET_FRAME_SLICE_BB_SIZE);
	}

	if (dev->devtype->product == CODA_HX4 ||
	    dev->devtype->product == CODA_7541) {
		int max_mb_x = 1920 / 16;
		int max_mb_y = 1088 / 16;
		int max_mb_num = max_mb_x * max_mb_y;

		FUNC5(dev, max_mb_num << 16 | max_mb_x << 8 | max_mb_y,
				CODA7_CMD_SET_FRAME_MAX_DEC_SIZE);
	} else if (dev->devtype->product == CODA_960) {
		int max_mb_x = 1920 / 16;
		int max_mb_y = 1088 / 16;
		int max_mb_num = max_mb_x * max_mb_y;

		FUNC5(dev, max_mb_num << 16 | max_mb_x << 8 | max_mb_y,
				CODA9_CMD_SET_FRAME_MAX_DEC_SIZE);
	}

	if (FUNC3(ctx, CODA_COMMAND_SET_FRAME_BUF)) {
		FUNC8(&ctx->dev->v4l2_dev,
			 "CODA_COMMAND_SET_FRAME_BUF timeout\n");
		return -ETIMEDOUT;
	}

	return 0;
}