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
typedef  union octnic_cmd_setup {int dummy; } octnic_cmd_setup ;
typedef  union octeon_instr_64B {int dummy; } octeon_instr_64B ;
typedef  int /*<<< orphan*/  u32 ;
struct octeon_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct octeon_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct octeon_device*,union octeon_instr_64B*,union octnic_cmd_setup*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct octeon_device*,union octeon_instr_64B*,union octnic_cmd_setup*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void
FUNC3(struct octeon_device *oct, union octeon_instr_64B *cmd,
		       union octnic_cmd_setup *setup, u32 tag)
{
	if (FUNC0(oct))
		FUNC1(oct, cmd, setup, tag);
	else
		FUNC2(oct, cmd, setup, tag);
}