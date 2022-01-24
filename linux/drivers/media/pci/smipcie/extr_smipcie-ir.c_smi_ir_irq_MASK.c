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
typedef  int u32 ;
struct smi_rc {int dummy; } ;

/* Variables and functions */
 int IR_X_INT ; 
 int /*<<< orphan*/  FUNC0 (struct smi_rc*) ; 
 int /*<<< orphan*/  FUNC1 (struct smi_rc*) ; 
 int /*<<< orphan*/  FUNC2 (struct smi_rc*) ; 
 int /*<<< orphan*/  FUNC3 (struct smi_rc*) ; 

int FUNC4(struct smi_rc *ir, u32 int_status)
{
	int handled = 0;

	if (int_status & IR_X_INT) {
		FUNC2(ir);
		FUNC0(ir);
		FUNC1(ir);
		FUNC3(ir);
		handled = 1;
	}
	return handled;
}