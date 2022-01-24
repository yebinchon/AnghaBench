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
struct ag71xx {int /*<<< orphan*/  ndev; } ;

/* Variables and functions */
 int /*<<< orphan*/  AG71XX_INT_INIT ; 
 int /*<<< orphan*/  AG71XX_REG_INT_ENABLE ; 
 int /*<<< orphan*/  AG71XX_REG_RX_CTRL ; 
 int /*<<< orphan*/  RX_CTRL_RXE ; 
 int /*<<< orphan*/  FUNC0 (struct ag71xx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct ag71xx *ag)
{
	/* start RX engine */
	FUNC0(ag, AG71XX_REG_RX_CTRL, RX_CTRL_RXE);

	/* enable interrupts */
	FUNC0(ag, AG71XX_REG_INT_ENABLE, AG71XX_INT_INIT);

	FUNC1(ag->ndev);
}