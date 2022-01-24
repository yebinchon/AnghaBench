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
typedef  int u64 ;
typedef  int /*<<< orphan*/  u16 ;

/* Variables and functions */
 int /*<<< orphan*/  DATA_SZ ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RD_DMA_ATTR ; 
 int /*<<< orphan*/  RD_DMA_ATTR_DEFAULT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WR_DMA_ATTR ; 
 int /*<<< orphan*/  WR_DMA_ATTR_DEFAULT ; 
 int /*<<< orphan*/  XOR_CHKSUM ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int*) ; 

__attribute__((used)) static void FUNC4(u64 *cell_ctrl, u16 data_size)
{
	u8 chksum;
	u64 ctrl;

	ctrl =  FUNC0(FUNC1(data_size), DATA_SZ)  |
		FUNC0(RD_DMA_ATTR_DEFAULT, RD_DMA_ATTR) |
		FUNC0(WR_DMA_ATTR_DEFAULT, WR_DMA_ATTR);

	chksum = FUNC3(&ctrl);

	ctrl |= FUNC0(chksum, XOR_CHKSUM);

	/* The data in the HW should be in Big Endian Format */
	*cell_ctrl = FUNC2(ctrl);
}