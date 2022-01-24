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
struct cp_private {int /*<<< orphan*/  dev; scalar_t__ tx_tail; scalar_t__ tx_head; scalar_t__ rx_tail; } ;

/* Variables and functions */
 int /*<<< orphan*/  Cmd ; 
 int /*<<< orphan*/  CpCmd ; 
 int /*<<< orphan*/  IntrMask ; 
 int /*<<< orphan*/  IntrStatus ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5 (struct cp_private *cp)
{
	FUNC1(IntrStatus, ~(FUNC0(IntrStatus)));
	FUNC2(IntrMask, 0);
	FUNC3(Cmd, 0);
	FUNC2(CpCmd, 0);
	FUNC2(IntrStatus, ~(FUNC0(IntrStatus)));

	cp->rx_tail = 0;
	cp->tx_head = cp->tx_tail = 0;

	FUNC4(cp->dev);
}