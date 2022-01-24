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
struct TYPE_2__ {int /*<<< orphan*/  idx; } ;

/* Variables and functions */
 scalar_t__ BREAK_INSTR_SIZE ; 
 int /*<<< orphan*/  NUMREGBYTES ; 
 int /*<<< orphan*/  arch_needs_sstep_emulation ; 
 scalar_t__ cont_addr ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ kgdbts_gdb_regs ; 
 int /*<<< orphan*/  kgdbts_regs ; 
 scalar_t__ sstep_addr ; 
 int sstep_state ; 
 int /*<<< orphan*/  sstep_thread_id ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 
 TYPE_1__ ts ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(char *put_str, char *arg)
{
	if (!arch_needs_sstep_emulation) {
		char *ptr = &put_str[11];
		if (put_str[1] != 'T' || put_str[2] != '0')
			return 1;
		FUNC3(&ptr, &sstep_thread_id);
		return 0;
	}
	switch (sstep_state) {
	case 1:
		/* validate the "g" packet to get the IP */
		FUNC4(&put_str[1], (char *)kgdbts_gdb_regs,
			 NUMREGBYTES);
		FUNC1(kgdbts_gdb_regs, &kgdbts_regs);
		FUNC6("Stopped at IP: %lx\n",
			 FUNC2(&kgdbts_regs));
		/* Want to stop at IP + break instruction size by default */
		sstep_addr = cont_addr + BREAK_INSTR_SIZE;
		break;
	case 2:
		if (FUNC5(put_str, "$OK", 3)) {
			FUNC0("kgdbts: failed sstep break set\n");
			return 1;
		}
		break;
	case 3:
		if (FUNC5(put_str, "$T0", 3)) {
			FUNC0("kgdbts: failed continue sstep\n");
			return 1;
		} else {
			char *ptr = &put_str[11];
			FUNC3(&ptr, &sstep_thread_id);
		}
		break;
	case 4:
		if (FUNC5(put_str, "$OK", 3)) {
			FUNC0("kgdbts: failed sstep break unset\n");
			return 1;
		}
		/* Single step is complete so continue on! */
		sstep_state = 0;
		return 0;
	default:
		FUNC0("kgdbts: ERROR failed sstep put emulation\n");
	}

	/* Continue on the same test line until emulation is complete */
	ts.idx--;
	return 0;
}