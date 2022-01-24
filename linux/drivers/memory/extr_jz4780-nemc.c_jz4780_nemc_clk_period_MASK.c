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
typedef  int /*<<< orphan*/  uint32_t ;
struct jz4780_nemc {int /*<<< orphan*/  clk; } ;

/* Variables and functions */
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long long,unsigned long) ; 

__attribute__((used)) static uint32_t FUNC2(struct jz4780_nemc *nemc)
{
	unsigned long rate;

	rate = FUNC0(nemc->clk);
	if (!rate)
		return 0;

	/* Return in picoseconds. */
	return FUNC1(1000000000000ull, rate);
}