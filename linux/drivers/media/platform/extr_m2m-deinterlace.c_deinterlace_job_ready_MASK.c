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
struct deinterlace_dev {int /*<<< orphan*/  busy; } ;
struct TYPE_2__ {int /*<<< orphan*/  m2m_ctx; } ;
struct deinterlace_ctx {struct deinterlace_dev* dev; TYPE_1__ fh; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct deinterlace_dev*,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(void *priv)
{
	struct deinterlace_ctx *ctx = priv;
	struct deinterlace_dev *pcdev = ctx->dev;

	if (FUNC3(ctx->fh.m2m_ctx) > 0 &&
	    FUNC2(ctx->fh.m2m_ctx) > 0 &&
	    !FUNC0(&ctx->dev->busy)) {
		FUNC1(pcdev, "Task ready\n");
		return 1;
	}

	FUNC1(pcdev, "Task not ready to run\n");

	return 0;
}