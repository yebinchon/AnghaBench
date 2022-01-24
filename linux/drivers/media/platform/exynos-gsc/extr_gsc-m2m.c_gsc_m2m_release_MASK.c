#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ refcnt; } ;
struct gsc_dev {int /*<<< orphan*/  lock; int /*<<< orphan*/  state; TYPE_1__ m2m; } ;
struct gsc_ctx {int /*<<< orphan*/  fh; int /*<<< orphan*/  m2m_ctx; struct gsc_dev* gsc_dev; } ;
struct file {int /*<<< orphan*/  private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  ST_M2M_OPEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current ; 
 struct gsc_ctx* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct gsc_ctx*) ; 
 int /*<<< orphan*/  FUNC3 (struct gsc_ctx*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct file *file)
{
	struct gsc_ctx *ctx = FUNC1(file->private_data);
	struct gsc_dev *gsc = ctx->gsc_dev;

	FUNC6("pid: %d, state: 0x%lx, refcnt= %d",
		FUNC7(current), gsc->state, gsc->m2m.refcnt);

	FUNC4(&gsc->lock);

	FUNC10(ctx->m2m_ctx);
	FUNC2(ctx);
	FUNC8(&ctx->fh);
	FUNC9(&ctx->fh);

	if (--gsc->m2m.refcnt <= 0)
		FUNC0(ST_M2M_OPEN, &gsc->state);
	FUNC3(ctx);

	FUNC5(&gsc->lock);
	return 0;
}