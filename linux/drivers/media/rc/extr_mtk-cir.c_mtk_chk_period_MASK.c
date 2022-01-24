#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct mtk_ir {int /*<<< orphan*/  dev; TYPE_1__* data; int /*<<< orphan*/  bus; } ;
struct TYPE_2__ {int div; } ;

/* Variables and functions */
 int FUNC0 (unsigned long,int) ; 
 unsigned long MTK_IR_SAMPLE ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static inline u32 FUNC3(struct mtk_ir *ir)
{
	u32 val;

	/* Period of raw software sampling in ns */
	val = FUNC0(1000000000ul,
				FUNC1(ir->bus) / ir->data->div);

	/*
	 * Period for software decoder used in the
	 * unit of raw software sampling
	 */
	val = FUNC0(MTK_IR_SAMPLE, val);

	FUNC2(ir->dev, "@pwm clk  = \t%lu\n",
		FUNC1(ir->bus) / ir->data->div);
	FUNC2(ir->dev, "@chkperiod = %08x\n", val);

	return val;
}