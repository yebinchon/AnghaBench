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
typedef  scalar_t__ u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct ksz_hw {scalar_t__ io; } ;

/* Variables and functions */
 scalar_t__ KS8842_PORT_CTRL_VID_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct ksz_hw *hw, int port, u16 *vid)
{
	u32 addr;

	FUNC0(port, addr);
	addr += KS8842_PORT_CTRL_VID_OFFSET;
	*vid = FUNC1(hw->io + addr);
}