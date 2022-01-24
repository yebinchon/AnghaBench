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
typedef  int u8 ;
typedef  int u32 ;
struct bnx2x_mac_vals {int* umac_addr; int /*<<< orphan*/ * umac_val; } ;
struct bnx2x {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int GRCBASE_UMAC0 ; 
 int GRCBASE_UMAC1 ; 
 int MISC_REGISTERS_RESET_REG_2_UMAC0 ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2x*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2x*,int,int /*<<< orphan*/ ) ; 
 int UMAC_REG_COMMAND_CONFIG ; 

__attribute__((used)) static bool FUNC3(struct bnx2x *bp,
					 u8 port, u32 reset_reg,
					 struct bnx2x_mac_vals *vals)
{
	u32 mask = MISC_REGISTERS_RESET_REG_2_UMAC0 << port;
	u32 base_addr;

	if (!(mask & reset_reg))
		return false;

	FUNC0("Disable umac Rx %02x\n", port);
	base_addr = port ? GRCBASE_UMAC1 : GRCBASE_UMAC0;
	vals->umac_addr[port] = base_addr + UMAC_REG_COMMAND_CONFIG;
	vals->umac_val[port] = FUNC1(bp, vals->umac_addr[port]);
	FUNC2(bp, vals->umac_addr[port], 0);

	return true;
}