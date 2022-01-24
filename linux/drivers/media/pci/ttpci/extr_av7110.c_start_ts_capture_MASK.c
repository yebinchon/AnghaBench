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
struct av7110 {int feeding1; int /*<<< orphan*/  dev; scalar_t__ ttbp; scalar_t__ grabbing; } ;

/* Variables and functions */
 int MASK_04 ; 
 int /*<<< orphan*/  MASK_10 ; 
 int MASK_20 ; 
 int /*<<< orphan*/  MC1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int TS_HEIGHT ; 
 unsigned int TS_WIDTH ; 
 int /*<<< orphan*/  FUNC2 (int,char*,struct av7110*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct av7110 *budget)
{
	unsigned y;

	FUNC2(2, "budget: %p\n", budget);

	if (budget->feeding1)
		return ++budget->feeding1;
	for (y = 0; y < TS_HEIGHT; y++)
		FUNC3(budget->grabbing + y * TS_WIDTH, 0x00, TS_WIDTH);
	budget->ttbp = 0;
	FUNC1(budget->dev, MASK_10);  /* VPE */
	FUNC0(budget->dev, MASK_10); /* VPE */
	FUNC4(budget->dev, MC1, (MASK_04 | MASK_20)); /* DMA3 on */
	return ++budget->feeding1;
}