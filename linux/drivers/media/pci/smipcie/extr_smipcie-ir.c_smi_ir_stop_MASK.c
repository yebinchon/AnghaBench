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
struct smi_rc {struct smi_dev* dev; } ;
struct smi_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IR_Init_Reg ; 
 int /*<<< orphan*/  rbIRen ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct smi_rc*) ; 

__attribute__((used)) static void FUNC2(struct smi_rc *ir)
{
	struct smi_dev *dev = ir->dev;

	FUNC1(ir);
	FUNC0(IR_Init_Reg, rbIRen);
}