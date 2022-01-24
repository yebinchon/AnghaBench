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
typedef  int /*<<< orphan*/  u32 ;

/* Variables and functions */
 int /*<<< orphan*/  MLX4_BOARD_ID_LEN ; 
 int VSD_OFFSET_MLX_BOARD_ID ; 
 int VSD_OFFSET_SIG1 ; 
 int VSD_OFFSET_SIG2 ; 
 int VSD_OFFSET_TS_BOARD_ID ; 
 scalar_t__ VSD_SIGNATURE_TOPSPIN ; 
 scalar_t__ FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(void *vsd, char *board_id)
{
	int i;

#define VSD_OFFSET_SIG1		0x00
#define VSD_OFFSET_SIG2		0xde
#define VSD_OFFSET_MLX_BOARD_ID	0xd0
#define VSD_OFFSET_TS_BOARD_ID	0x20

#define VSD_SIGNATURE_TOPSPIN	0x5ad

	FUNC2(board_id, 0, MLX4_BOARD_ID_LEN);

	if (FUNC0(vsd + VSD_OFFSET_SIG1) == VSD_SIGNATURE_TOPSPIN &&
	    FUNC0(vsd + VSD_OFFSET_SIG2) == VSD_SIGNATURE_TOPSPIN) {
		FUNC4(board_id, vsd + VSD_OFFSET_TS_BOARD_ID, MLX4_BOARD_ID_LEN);
	} else {
		/*
		 * The board ID is a string but the firmware byte
		 * swaps each 4-byte word before passing it back to
		 * us.  Therefore we need to swab it before printing.
		 */
		u32 *bid_u32 = (u32 *)board_id;

		for (i = 0; i < 4; ++i) {
			u32 *addr;
			u32 val;

			addr = (u32 *) (vsd + VSD_OFFSET_MLX_BOARD_ID + i * 4);
			val = FUNC1(addr);
			val = FUNC5(val);
			FUNC3(val, &bid_u32[i]);
		}
	}
}