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

/* Variables and functions */
 unsigned long BREAK_INSTR_SIZE ; 
 int /*<<< orphan*/  NUMREGBYTES ; 
 scalar_t__ arch_needs_sstep_emulation ; 
 unsigned long cont_addr ; 
 int /*<<< orphan*/  FUNC0 (char*,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ *) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ kgdbts_gdb_regs ; 
 int /*<<< orphan*/  kgdbts_regs ; 
 unsigned long FUNC5 (char*) ; 
 int restart_from_top_after_write ; 
 unsigned long sstep_addr ; 
 scalar_t__ FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 

__attribute__((used)) static int FUNC8(char *put_str, char *arg)
{
	unsigned long addr = FUNC5(arg);
	unsigned long ip;
	int offset = 0;

	FUNC4(&put_str[1], (char *)kgdbts_gdb_regs,
		 NUMREGBYTES);
	FUNC1(kgdbts_gdb_regs, &kgdbts_regs);
	ip = FUNC2(&kgdbts_regs);
	FUNC7("Stopped at IP: %lx\n", ip);
#ifdef GDB_ADJUSTS_BREAK_OFFSET
	/* On some arches, a breakpoint stop requires it to be decremented */
	if (addr + BREAK_INSTR_SIZE == ip)
		offset = -BREAK_INSTR_SIZE;
#endif

	if (arch_needs_sstep_emulation && sstep_addr &&
	    ip + offset == sstep_addr &&
	    ((!FUNC6(arg, "sys_open") || !FUNC6(arg, "do_fork")))) {
		/* This is special case for emulated single step */
		FUNC7("Emul: rewind hit single step bp\n");
		restart_from_top_after_write = 1;
	} else if (FUNC6(arg, "silent") && ip + offset != addr) {
		FUNC0("kgdbts: BP mismatch %lx expected %lx\n",
			   ip + offset, addr);
		return 1;
	}
	/* Readjust the instruction pointer if needed */
	ip += offset;
	cont_addr = ip;
#ifdef GDB_ADJUSTS_BREAK_OFFSET
	instruction_pointer_set(&kgdbts_regs, ip);
#endif
	return 0;
}