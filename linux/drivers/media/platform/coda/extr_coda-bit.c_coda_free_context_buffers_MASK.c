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
struct coda_dev {TYPE_1__* devtype; } ;
struct coda_ctx {int /*<<< orphan*/  parabuf; int /*<<< orphan*/  workbuf; int /*<<< orphan*/  psbuf; int /*<<< orphan*/  slicebuf; struct coda_dev* dev; } ;
struct TYPE_2__ {scalar_t__ product; } ;

/* Variables and functions */
 scalar_t__ CODA_DX6 ; 
 int /*<<< orphan*/  FUNC0 (struct coda_dev*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(struct coda_ctx *ctx)
{
	struct coda_dev *dev = ctx->dev;

	FUNC0(dev, &ctx->slicebuf);
	FUNC0(dev, &ctx->psbuf);
	if (dev->devtype->product != CODA_DX6)
		FUNC0(dev, &ctx->workbuf);
	FUNC0(dev, &ctx->parabuf);
}