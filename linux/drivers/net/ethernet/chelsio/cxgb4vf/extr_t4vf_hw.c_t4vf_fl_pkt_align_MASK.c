#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_4__ {int /*<<< orphan*/  sge_control2; int /*<<< orphan*/  sge_control; } ;
struct TYPE_3__ {TYPE_2__ sge; int /*<<< orphan*/  chip; } ;
struct adapter {TYPE_1__ params; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ CHELSIO_T5 ; 
 unsigned int INGPACKBOUNDARY_16B_X ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int INGPACKBOUNDARY_SHIFT_X ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned int INGPADBOUNDARY_SHIFT_X ; 
 unsigned int T6_INGPADBOUNDARY_SHIFT_X ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC4 (unsigned int,unsigned int) ; 

int FUNC5(struct adapter *adapter)
{
	u32 sge_control, sge_control2;
	unsigned int ingpadboundary, ingpackboundary, fl_align, ingpad_shift;

	sge_control = adapter->params.sge.sge_control;

	/* T4 uses a single control field to specify both the PCIe Padding and
	 * Packing Boundary.  T5 introduced the ability to specify these
	 * separately.  The actual Ingress Packet Data alignment boundary
	 * within Packed Buffer Mode is the maximum of these two
	 * specifications.  (Note that it makes no real practical sense to
	 * have the Pading Boudary be larger than the Packing Boundary but you
	 * could set the chip up that way and, in fact, legacy T4 code would
	 * end doing this because it would initialize the Padding Boundary and
	 * leave the Packing Boundary initialized to 0 (16 bytes).)
	 * Padding Boundary values in T6 starts from 8B,
	 * where as it is 32B for T4 and T5.
	 */
	if (FUNC0(adapter->params.chip) <= CHELSIO_T5)
		ingpad_shift = INGPADBOUNDARY_SHIFT_X;
	else
		ingpad_shift = T6_INGPADBOUNDARY_SHIFT_X;

	ingpadboundary = 1 << (FUNC2(sge_control) + ingpad_shift);

	fl_align = ingpadboundary;
	if (!FUNC3(adapter->params.chip)) {
		/* T5 has a different interpretation of one of the PCIe Packing
		 * Boundary values.
		 */
		sge_control2 = adapter->params.sge.sge_control2;
		ingpackboundary = FUNC1(sge_control2);
		if (ingpackboundary == INGPACKBOUNDARY_16B_X)
			ingpackboundary = 16;
		else
			ingpackboundary = 1 << (ingpackboundary +
						INGPACKBOUNDARY_SHIFT_X);

		fl_align = FUNC4(ingpadboundary, ingpackboundary);
	}
	return fl_align;
}