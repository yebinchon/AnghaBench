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
struct exynos_lpass {int /*<<< orphan*/  top; int /*<<< orphan*/  sfr0_clk; } ;

/* Variables and functions */
 int /*<<< orphan*/  LPASS_DMA_SW_RESET ; 
 int /*<<< orphan*/  LPASS_I2S_SW_RESET ; 
 int LPASS_INTR_DMA ; 
 int LPASS_INTR_I2S ; 
 int LPASS_INTR_SFR ; 
 int LPASS_INTR_UART ; 
 int /*<<< orphan*/  LPASS_MEM_SW_RESET ; 
 int /*<<< orphan*/  LPASS_UART_SW_RESET ; 
 int /*<<< orphan*/  SFR_LPASS_INTR_CA5_MASK ; 
 int /*<<< orphan*/  SFR_LPASS_INTR_CPU_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct exynos_lpass*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct exynos_lpass *lpass)
{
	FUNC0(lpass->sfr0_clk);

	/* Unmask SFR, DMA and I2S interrupt */
	FUNC2(lpass->top, SFR_LPASS_INTR_CA5_MASK,
		     LPASS_INTR_SFR | LPASS_INTR_DMA | LPASS_INTR_I2S);

	FUNC2(lpass->top, SFR_LPASS_INTR_CPU_MASK,
		     LPASS_INTR_SFR | LPASS_INTR_DMA | LPASS_INTR_I2S |
		     LPASS_INTR_UART);

	FUNC1(lpass, LPASS_I2S_SW_RESET);
	FUNC1(lpass, LPASS_DMA_SW_RESET);
	FUNC1(lpass, LPASS_MEM_SW_RESET);
	FUNC1(lpass, LPASS_UART_SW_RESET);
}