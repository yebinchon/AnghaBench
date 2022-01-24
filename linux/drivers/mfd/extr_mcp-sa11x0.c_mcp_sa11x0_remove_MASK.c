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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct mcp_sa11x0 {int mccr0; int /*<<< orphan*/  base0; int /*<<< orphan*/  base1; } ;
struct mcp {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int MCCR0_MCE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mcp*) ; 
 int /*<<< orphan*/  FUNC3 (struct mcp*) ; 
 struct mcp* FUNC4 (struct platform_device*) ; 
 struct resource* FUNC5 (struct platform_device*,int /*<<< orphan*/ ,int) ; 
 struct mcp_sa11x0* FUNC6 (struct mcp*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct resource*) ; 

__attribute__((used)) static int FUNC9(struct platform_device *dev)
{
	struct mcp *mcp = FUNC4(dev);
	struct mcp_sa11x0 *m = FUNC6(mcp);
	struct resource *mem0, *mem1;

	if (m->mccr0 & MCCR0_MCE)
		FUNC0(&dev->dev,
			 "device left active (missing disable call?)\n");

	mem0 = FUNC5(dev, IORESOURCE_MEM, 0);
	mem1 = FUNC5(dev, IORESOURCE_MEM, 1);

	FUNC2(mcp);
	FUNC1(m->base1);
	FUNC1(m->base0);
	FUNC3(mcp);
	FUNC7(mem1->start, FUNC8(mem1));
	FUNC7(mem0->start, FUNC8(mem0));

	return 0;
}