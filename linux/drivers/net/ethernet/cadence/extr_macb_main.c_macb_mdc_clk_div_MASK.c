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
struct macb {int /*<<< orphan*/  pclk; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MACB_CLK_DIV16 ; 
 int /*<<< orphan*/  MACB_CLK_DIV32 ; 
 int /*<<< orphan*/  MACB_CLK_DIV64 ; 
 int /*<<< orphan*/  MACB_CLK_DIV8 ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct macb*) ; 
 scalar_t__ FUNC3 (struct macb*) ; 

__attribute__((used)) static u32 FUNC4(struct macb *bp)
{
	u32 config;
	unsigned long pclk_hz;

	if (FUNC3(bp))
		return FUNC2(bp);

	pclk_hz = FUNC1(bp->pclk);
	if (pclk_hz <= 20000000)
		config = FUNC0(CLK, MACB_CLK_DIV8);
	else if (pclk_hz <= 40000000)
		config = FUNC0(CLK, MACB_CLK_DIV16);
	else if (pclk_hz <= 80000000)
		config = FUNC0(CLK, MACB_CLK_DIV32);
	else
		config = FUNC0(CLK, MACB_CLK_DIV64);

	return config;
}