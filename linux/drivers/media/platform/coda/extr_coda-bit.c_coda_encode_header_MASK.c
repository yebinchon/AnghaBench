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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct vb2_buffer {int dummy; } ;
struct vb2_v4l2_buffer {struct vb2_buffer vb2_buf; } ;
struct v4l2_rect {int width; int height; } ;
struct coda_q_data {struct v4l2_rect rect; } ;
struct coda_dev {TYPE_2__* devtype; int /*<<< orphan*/  v4l2_dev; } ;
struct coda_ctx {int /*<<< orphan*/  reg_idx; TYPE_1__* codec; struct coda_dev* dev; } ;
struct TYPE_4__ {scalar_t__ product; } ;
struct TYPE_3__ {scalar_t__ dst_fourcc; } ;

/* Variables and functions */
 int /*<<< orphan*/  CODA9_CMD_ENC_HEADER_FRAME_CROP_H ; 
 int /*<<< orphan*/  CODA9_CMD_ENC_HEADER_FRAME_CROP_V ; 
 int CODA9_HEADER_FRAME_CROP ; 
 scalar_t__ CODA_960 ; 
 int /*<<< orphan*/  CODA_CMD_ENC_HEADER_BB_SIZE ; 
 int /*<<< orphan*/  CODA_CMD_ENC_HEADER_BB_START ; 
 int /*<<< orphan*/  CODA_CMD_ENC_HEADER_CODE ; 
 int /*<<< orphan*/  CODA_COMMAND_ENCODE_HEADER ; 
 int CODA_HEADER_H264_SPS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  V4L2_BUF_TYPE_VIDEO_OUTPUT ; 
 scalar_t__ V4L2_PIX_FMT_H264 ; 
 int FUNC1 (struct coda_ctx*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct coda_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct coda_dev*,int,int /*<<< orphan*/ ) ; 
 struct coda_q_data* FUNC4 (struct coda_ctx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*) ; 
 int FUNC9 (struct vb2_buffer*,int /*<<< orphan*/ ) ; 
 size_t FUNC10 (struct vb2_buffer*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (struct vb2_buffer*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct coda_ctx *ctx, struct vb2_v4l2_buffer *buf,
			      int header_code, u8 *header, int *size)
{
	struct vb2_buffer *vb = &buf->vb2_buf;
	struct coda_dev *dev = ctx->dev;
	struct coda_q_data *q_data_src;
	struct v4l2_rect *r;
	size_t bufsize;
	int ret;
	int i;

	if (dev->devtype->product == CODA_960)
		FUNC6(FUNC11(vb, 0), 0, 64);

	FUNC3(dev, FUNC9(vb, 0),
		   CODA_CMD_ENC_HEADER_BB_START);
	bufsize = FUNC10(vb, 0);
	if (dev->devtype->product == CODA_960)
		bufsize /= 1024;
	FUNC3(dev, bufsize, CODA_CMD_ENC_HEADER_BB_SIZE);
	if (dev->devtype->product == CODA_960 &&
	    ctx->codec->dst_fourcc == V4L2_PIX_FMT_H264 &&
	    header_code == CODA_HEADER_H264_SPS) {
		q_data_src = FUNC4(ctx, V4L2_BUF_TYPE_VIDEO_OUTPUT);
		r = &q_data_src->rect;

		if (r->width % 16 || r->height % 16) {
			u32 crop_right = FUNC7(r->width, 16) -  r->width;
			u32 crop_bottom = FUNC7(r->height, 16) - r->height;

			FUNC3(dev, crop_right,
				   CODA9_CMD_ENC_HEADER_FRAME_CROP_H);
			FUNC3(dev, crop_bottom,
				   CODA9_CMD_ENC_HEADER_FRAME_CROP_V);
			header_code |= CODA9_HEADER_FRAME_CROP;
		}
	}
	FUNC3(dev, header_code, CODA_CMD_ENC_HEADER_CODE);
	ret = FUNC1(ctx, CODA_COMMAND_ENCODE_HEADER);
	if (ret < 0) {
		FUNC8(&dev->v4l2_dev, "CODA_COMMAND_ENCODE_HEADER timeout\n");
		return ret;
	}

	if (dev->devtype->product == CODA_960) {
		for (i = 63; i > 0; i--)
			if (((char *)FUNC11(vb, 0))[i] != 0)
				break;
		*size = i + 1;
	} else {
		*size = FUNC2(dev, FUNC0(ctx->reg_idx)) -
			FUNC2(dev, CODA_CMD_ENC_HEADER_BB_START);
	}
	FUNC5(header, FUNC11(vb, 0), *size);

	return 0;
}