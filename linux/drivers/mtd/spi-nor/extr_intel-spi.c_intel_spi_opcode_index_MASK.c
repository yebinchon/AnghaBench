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
typedef  scalar_t__ u8 ;
struct intel_spi {scalar_t__* opcodes; scalar_t__ sregs; scalar_t__ locked; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__*) ; 
 int EINVAL ; 
 scalar_t__ OPMENU0 ; 
 scalar_t__ PREOP_OPTYPE ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct intel_spi *ispi, u8 opcode, int optype)
{
	int i;
	int preop;

	if (ispi->locked) {
		for (i = 0; i < FUNC0(ispi->opcodes); i++)
			if (ispi->opcodes[i] == opcode)
				return i;

		return -EINVAL;
	}

	/* The lock is off, so just use index 0 */
	FUNC2(opcode, ispi->sregs + OPMENU0);
	preop = FUNC1(ispi->sregs + PREOP_OPTYPE);
	FUNC2(optype << 16 | preop, ispi->sregs + PREOP_OPTYPE);

	return 0;
}