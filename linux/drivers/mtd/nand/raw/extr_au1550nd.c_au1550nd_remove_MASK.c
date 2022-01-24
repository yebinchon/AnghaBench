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
struct resource {int /*<<< orphan*/  start; } ;
struct platform_device {int dummy; } ;
struct au1550nd_ctx {int /*<<< orphan*/  base; int /*<<< orphan*/  chip; } ;

/* Variables and functions */
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct au1550nd_ctx*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct au1550nd_ctx* FUNC3 (struct platform_device*) ; 
 struct resource* FUNC4 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct au1550nd_ctx *ctx = FUNC3(pdev);
	struct resource *r = FUNC4(pdev, IORESOURCE_MEM, 0);

	FUNC2(&ctx->chip);
	FUNC0(ctx->base);
	FUNC5(r->start, 0x1000);
	FUNC1(ctx);
	return 0;
}