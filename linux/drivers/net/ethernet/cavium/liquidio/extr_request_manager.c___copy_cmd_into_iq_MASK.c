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
struct octeon_instr_queue {int* base_addr; int host_write_index; scalar_t__ iqcmd_64B; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,int*,int) ; 

__attribute__((used)) static inline void FUNC1(struct octeon_instr_queue *iq,
				      u8 *cmd)
{
	u8 *iqptr, cmdsize;

	cmdsize = ((iq->iqcmd_64B) ? 64 : 32);
	iqptr = iq->base_addr + (cmdsize * iq->host_write_index);

	FUNC0(iqptr, cmd, cmdsize);
}