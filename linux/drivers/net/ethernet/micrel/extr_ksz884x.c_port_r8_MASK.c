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
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u32 ;
struct ksz_hw {scalar_t__ io; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct ksz_hw *hw, int port, int offset, u8 *data)
{
	u32 addr;

	FUNC0(port, addr);
	addr += offset;
	*data = FUNC1(hw->io + addr);
}