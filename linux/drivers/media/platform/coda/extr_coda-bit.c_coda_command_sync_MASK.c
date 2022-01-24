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
struct coda_dev {int /*<<< orphan*/  coda_mutex; } ;
struct coda_ctx {struct coda_dev* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct coda_ctx*,int) ; 
 int FUNC1 (struct coda_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct coda_ctx*) ; 

__attribute__((used)) static int FUNC4(struct coda_ctx *ctx, int cmd)
{
	struct coda_dev *dev = ctx->dev;
	int ret;

	FUNC2(&dev->coda_mutex);

	FUNC0(ctx, cmd);
	ret = FUNC1(dev);
	FUNC3(ctx);

	return ret;
}