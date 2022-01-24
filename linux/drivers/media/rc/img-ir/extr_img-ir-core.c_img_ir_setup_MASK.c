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
struct img_ir_priv {int /*<<< orphan*/  clk; } ;

/* Variables and functions */
 int /*<<< orphan*/  IMG_IR_IRQ_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct img_ir_priv*) ; 
 int /*<<< orphan*/  FUNC3 (struct img_ir_priv*) ; 
 int /*<<< orphan*/  FUNC4 (struct img_ir_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct img_ir_priv *priv)
{
	/* start off with interrupts disabled */
	FUNC4(priv, IMG_IR_IRQ_ENABLE, 0);

	FUNC3(priv);
	FUNC2(priv);

	if (!FUNC0(priv->clk))
		FUNC1(priv->clk);
}