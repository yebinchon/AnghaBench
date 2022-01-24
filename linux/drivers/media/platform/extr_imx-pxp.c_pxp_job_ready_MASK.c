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
struct TYPE_2__ {int /*<<< orphan*/  m2m_ctx; } ;
struct pxp_ctx {int /*<<< orphan*/  dev; TYPE_1__ fh; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(void *priv)
{
	struct pxp_ctx *ctx = priv;

	if (FUNC2(ctx->fh.m2m_ctx) < 1 ||
	    FUNC1(ctx->fh.m2m_ctx) < 1) {
		FUNC0(ctx->dev, "Not enough buffers available\n");
		return 0;
	}

	return 1;
}