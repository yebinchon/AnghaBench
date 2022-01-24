#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct video_device {int /*<<< orphan*/  lock; } ;
struct TYPE_4__ {int /*<<< orphan*/  compressed_frame; } ;
struct TYPE_5__ {int /*<<< orphan*/  m2m_ctx; } ;
struct vicodec_ctx {TYPE_1__ state; int /*<<< orphan*/  hdl; TYPE_2__ fh; } ;
struct file {int dummy; } ;

/* Variables and functions */
 struct vicodec_ctx* FUNC0 (struct file*) ; 
 int /*<<< orphan*/  FUNC1 (struct vicodec_ctx*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 struct video_device* FUNC9 (struct file*) ; 

__attribute__((used)) static int FUNC10(struct file *file)
{
	struct video_device *vfd = FUNC9(file);
	struct vicodec_ctx *ctx = FUNC0(file);

	FUNC3(vfd->lock);
	FUNC8(ctx->fh.m2m_ctx);
	FUNC4(vfd->lock);
	FUNC6(&ctx->fh);
	FUNC7(&ctx->fh);
	FUNC5(&ctx->hdl);
	FUNC2(ctx->state.compressed_frame);
	FUNC1(ctx);

	return 0;
}