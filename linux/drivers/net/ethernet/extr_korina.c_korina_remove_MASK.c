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
struct korina_private {int /*<<< orphan*/  tx_dma_regs; int /*<<< orphan*/  rx_dma_regs; int /*<<< orphan*/  eth_regs; } ;
struct korina_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct korina_private* FUNC2 (int /*<<< orphan*/ ) ; 
 struct korina_device* FUNC3 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct korina_device *bif = FUNC3(pdev);
	struct korina_private *lp = FUNC2(bif->dev);

	FUNC1(lp->eth_regs);
	FUNC1(lp->rx_dma_regs);
	FUNC1(lp->tx_dma_regs);

	FUNC4(bif->dev);
	FUNC0(bif->dev);

	return 0;
}