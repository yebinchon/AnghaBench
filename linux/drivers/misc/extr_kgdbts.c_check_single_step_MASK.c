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
struct TYPE_2__ {int idx; } ;

/* Variables and functions */
 int /*<<< orphan*/  NUMREGBYTES ; 
 scalar_t__ arch_needs_sstep_emulation ; 
 int cont_instead_of_sstep ; 
 unsigned long cont_thread_id ; 
 int /*<<< orphan*/  FUNC0 (char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ *) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ kgdbts_gdb_regs ; 
 int /*<<< orphan*/  kgdbts_regs ; 
 unsigned long FUNC4 (char*) ; 
 scalar_t__ sstep_state ; 
 unsigned long sstep_thread_id ; 
 TYPE_1__ ts ; 
 int /*<<< orphan*/  FUNC5 (char*,unsigned long) ; 

__attribute__((used)) static int FUNC6(char *put_str, char *arg)
{
	unsigned long addr = FUNC4(arg);
	static int matched_id;

	/*
	 * From an arch indepent point of view the instruction pointer
	 * should be on a different instruction
	 */
	FUNC3(&put_str[1], (char *)kgdbts_gdb_regs,
		 NUMREGBYTES);
	FUNC1(kgdbts_gdb_regs, &kgdbts_regs);
	FUNC5("Singlestep stopped at IP: %lx\n",
		   FUNC2(&kgdbts_regs));

	if (sstep_thread_id != cont_thread_id) {
		/*
		 * Ensure we stopped in the same thread id as before, else the
		 * debugger should continue until the original thread that was
		 * single stepped is scheduled again, emulating gdb's behavior.
		 */
		FUNC5("ThrID does not match: %lx\n", cont_thread_id);
		if (arch_needs_sstep_emulation) {
			if (matched_id &&
			    FUNC2(&kgdbts_regs) != addr)
				goto continue_test;
			matched_id++;
			ts.idx -= 2;
			sstep_state = 0;
			return 0;
		}
		cont_instead_of_sstep = 1;
		ts.idx -= 4;
		return 0;
	}
continue_test:
	matched_id = 0;
	if (FUNC2(&kgdbts_regs) == addr) {
		FUNC0("kgdbts: SingleStep failed at %lx\n",
			   FUNC2(&kgdbts_regs));
		return 1;
	}

	return 0;
}