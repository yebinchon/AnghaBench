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
struct platform_device {int dummy; } ;
struct mv643xx_eth_private {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  INT_MASK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 struct mv643xx_eth_private* FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct mv643xx_eth_private*) ; 
 int /*<<< orphan*/  FUNC3 (struct mv643xx_eth_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mv643xx_eth_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct platform_device *pdev)
{
	struct mv643xx_eth_private *mp = FUNC1(pdev);

	/* Mask all interrupts on ethernet port */
	FUNC4(mp, INT_MASK, 0);
	FUNC3(mp, INT_MASK);

	if (FUNC0(mp->dev))
		FUNC2(mp);
}