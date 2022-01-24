#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_5__ {int slow_intr_mask; scalar_t__ regs; int /*<<< orphan*/  espi; int /*<<< orphan*/  tp; int /*<<< orphan*/  sge; } ;
typedef  TYPE_1__ adapter_t ;

/* Variables and functions */
 scalar_t__ A_PL_CAUSE ; 
 int F_PL_INTR_ESPI ; 
 int F_PL_INTR_EXT ; 
 int F_PL_INTR_PCIX ; 
 int F_PL_INTR_SGE_ERR ; 
 int F_PL_INTR_TP ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC7(adapter_t *adapter)
{
	u32 cause = FUNC0(adapter->regs + A_PL_CAUSE);

	cause &= adapter->slow_intr_mask;
	if (!cause)
		return 0;
	if (cause & F_PL_INTR_SGE_ERR)
		FUNC4(adapter->sge);
	if (cause & F_PL_INTR_TP)
		FUNC5(adapter->tp);
	if (cause & F_PL_INTR_ESPI)
		FUNC2(adapter->espi);
	if (cause & F_PL_INTR_PCIX)
		FUNC3(adapter);
	if (cause & F_PL_INTR_EXT)
		FUNC1(adapter);

	/* Clear the interrupts just processed. */
	FUNC6(cause, adapter->regs + A_PL_CAUSE);
	FUNC0(adapter->regs + A_PL_CAUSE); /* flush writes */
	return 1;
}