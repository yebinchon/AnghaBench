#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u32 ;
struct jpeg_video_decode_init_params_t {int circular_buffer_begin_addr_p; int circular_buffer_end_addr_p; } ;
struct jpeg_decode_return_params_t {int dummy; } ;
struct jpeg_decode_params_t {int dummy; } ;
struct delta_mjpeg_ctx {void* ipc_hdl; struct delta_buf* ipc_buf; int /*<<< orphan*/  str; } ;
struct delta_ipc_param {int size; struct jpeg_video_decode_init_params_t* data; } ;
struct delta_dev {int /*<<< orphan*/  dev; } ;
struct delta_ctx {int /*<<< orphan*/  name; struct delta_dev* dev; } ;
struct delta_buf {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct delta_ctx*,char*,struct delta_ipc_param*,int,struct delta_buf**,void**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct jpeg_video_decode_init_params_t*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct jpeg_video_decode_init_params_t*,int /*<<< orphan*/ ,int) ; 
 struct delta_mjpeg_ctx* FUNC5 (struct delta_ctx*) ; 

__attribute__((used)) static int FUNC6(struct delta_ctx *pctx)
{
	struct delta_dev *delta = pctx->dev;
	struct delta_mjpeg_ctx *ctx = FUNC5(pctx);
	int ret = 0;
	struct jpeg_video_decode_init_params_t params_struct;
	struct jpeg_video_decode_init_params_t *params = &params_struct;
	struct delta_buf *ipc_buf;
	u32 ipc_buf_size;
	struct delta_ipc_param ipc_param;
	void *hdl;

	FUNC4(params, 0, sizeof(*params));
	params->circular_buffer_begin_addr_p = 0x00000000;
	params->circular_buffer_end_addr_p = 0xffffffff;

	FUNC2(delta->dev,
		 "%s  %s\n", pctx->name,
		 FUNC3(params, ctx->str, sizeof(ctx->str)));

	ipc_param.size = sizeof(*params);
	ipc_param.data = params;
	ipc_buf_size = sizeof(struct jpeg_decode_params_t) +
	    sizeof(struct jpeg_decode_return_params_t);
	ret = FUNC0(pctx, "JPEG_DECODER_HW0", &ipc_param,
			     ipc_buf_size, &ipc_buf, &hdl);
	if (ret) {
		FUNC1(delta->dev,
			"%s  dumping command %s\n", pctx->name,
			FUNC3(params, ctx->str, sizeof(ctx->str)));
		return ret;
	}

	ctx->ipc_buf = ipc_buf;
	ctx->ipc_hdl = hdl;

	return 0;
}