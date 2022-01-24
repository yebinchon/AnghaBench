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
typedef  int /*<<< orphan*/  u32 ;
struct alx_priv {int /*<<< orphan*/  hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALX_ISR ; 
 scalar_t__ ALX_ISR_DIS ; 
 int /*<<< orphan*/  FUNC0 (struct alx_priv*) ; 
 int /*<<< orphan*/  FUNC1 (struct alx_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct alx_priv*) ; 
 int /*<<< orphan*/  FUNC3 (struct alx_priv*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct alx_priv *alx)
{
	/* hardware setting lost, restore it */
	FUNC2(alx);
	FUNC0(alx);

	/* clear old interrupts */
	FUNC4(&alx->hw, ALX_ISR, ~(u32)ALX_ISR_DIS);

	FUNC1(alx);

	FUNC3(alx);
}