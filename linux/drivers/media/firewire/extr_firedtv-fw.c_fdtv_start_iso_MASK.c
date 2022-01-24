#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct fw_device {int /*<<< orphan*/  card; int /*<<< orphan*/  max_speed; } ;
struct firedtv {struct fdtv_ir_context* ir_context; int /*<<< orphan*/  isochannel; } ;
struct TYPE_3__ {int /*<<< orphan*/ * pages; } ;
struct fdtv_ir_context {int /*<<< orphan*/  context; TYPE_1__ buffer; int /*<<< orphan*/ * pages; scalar_t__ current_packet; scalar_t__ interrupt_packet; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FW_ISO_CONTEXT_MATCH_ALL_TAGS ; 
 int /*<<< orphan*/  FW_ISO_CONTEXT_RECEIVE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  ISO_HEADER_SIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int N_PACKETS ; 
 int N_PAGES ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct fw_device* FUNC2 (struct firedtv*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct firedtv*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  handle_iso ; 
 int /*<<< orphan*/  FUNC8 (struct fdtv_ir_context*) ; 
 struct fdtv_ir_context* FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (struct fdtv_ir_context*,int) ; 

int FUNC12(struct firedtv *fdtv)
{
	struct fdtv_ir_context *ctx;
	struct fw_device *device = FUNC2(fdtv);
	int i, err;

	ctx = FUNC9(sizeof(*ctx), GFP_KERNEL);
	if (!ctx)
		return -ENOMEM;

	ctx->context = FUNC5(device->card,
			FW_ISO_CONTEXT_RECEIVE, fdtv->isochannel,
			device->max_speed, ISO_HEADER_SIZE, handle_iso, fdtv);
	if (FUNC0(ctx->context)) {
		err = FUNC1(ctx->context);
		goto fail_free;
	}

	err = FUNC4(&ctx->buffer, device->card,
				 N_PAGES, DMA_FROM_DEVICE);
	if (err)
		goto fail_context_destroy;

	ctx->interrupt_packet = 0;
	ctx->current_packet = 0;

	for (i = 0; i < N_PAGES; i++)
		ctx->pages[i] = FUNC10(ctx->buffer.pages[i]);

	for (i = 0; i < N_PACKETS; i++) {
		err = FUNC11(ctx, i);
		if (err)
			goto fail;
	}

	err = FUNC7(ctx->context, -1, 0,
				   FW_ISO_CONTEXT_MATCH_ALL_TAGS);
	if (err)
		goto fail;

	fdtv->ir_context = ctx;

	return 0;
fail:
	FUNC3(&ctx->buffer, device->card);
fail_context_destroy:
	FUNC6(ctx->context);
fail_free:
	FUNC8(ctx);

	return err;
}