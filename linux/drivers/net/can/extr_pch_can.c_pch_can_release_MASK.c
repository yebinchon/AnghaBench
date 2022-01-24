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
struct pch_can_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCH_CAN_NONE ; 
 int /*<<< orphan*/  PCH_CAN_STOP ; 
 int /*<<< orphan*/  FUNC0 (struct pch_can_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pch_can_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pch_can_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pch_can_priv*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct pch_can_priv *priv)
{
	/* Stooping the CAN device. */
	FUNC1(priv, PCH_CAN_STOP);

	/* Disabling the interrupts. */
	FUNC0(priv, PCH_CAN_NONE);

	/* Disabling all the receive object. */
	FUNC2(priv, 0);

	/* Disabling all the transmit object. */
	FUNC3(priv, 0);
}