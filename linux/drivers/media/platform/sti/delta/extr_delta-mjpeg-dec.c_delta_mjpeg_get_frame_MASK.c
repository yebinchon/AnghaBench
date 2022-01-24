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
struct delta_mjpeg_ctx {struct delta_frame* out_frame; } ;
struct delta_frame {int dummy; } ;
struct delta_ctx {int dummy; } ;

/* Variables and functions */
 int ENODATA ; 
 struct delta_mjpeg_ctx* FUNC0 (struct delta_ctx*) ; 

__attribute__((used)) static int FUNC1(struct delta_ctx *pctx,
				 struct delta_frame **frame)
{
	struct delta_mjpeg_ctx *ctx = FUNC0(pctx);

	if (!ctx->out_frame)
		return -ENODATA;

	*frame = ctx->out_frame;

	ctx->out_frame = NULL;

	return 0;
}