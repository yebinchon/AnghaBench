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
struct hva_ctx {int /*<<< orphan*/  name; scalar_t__ aborting; TYPE_1__ fh; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct device* FUNC0 (struct hva_ctx*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(void *priv)
{
	struct hva_ctx *ctx = priv;
	struct device *dev = FUNC0(ctx);

	if (!FUNC3(ctx->fh.m2m_ctx)) {
		FUNC1(dev, "%s job not ready: no frame buffers\n",
			ctx->name);
		return 0;
	}

	if (!FUNC2(ctx->fh.m2m_ctx)) {
		FUNC1(dev, "%s job not ready: no stream buffers\n",
			ctx->name);
		return 0;
	}

	if (ctx->aborting) {
		FUNC1(dev, "%s job not ready: aborting\n", ctx->name);
		return 0;
	}

	return 1;
}