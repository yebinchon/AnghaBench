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
typedef  int /*<<< orphan*/  PI_UINT32 ;
typedef  int /*<<< orphan*/  DFX_board_t ;

/* Variables and functions */
 int DFX_K_HW_TIMEOUT ; 
 int DFX_K_SUCCESS ; 
 scalar_t__ PI_STATE_K_DMA_UNAVAIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(DFX_board_t *bp, PI_UINT32 type)
	{
	int timeout_cnt;	/* used in for loops */

	/* Set reset type bit and reset adapter */

	FUNC0(bp, type);

	/* Now wait for adapter to enter DMA_UNAVAILABLE state */

	for (timeout_cnt = 100000; timeout_cnt > 0; timeout_cnt--)
		{
		if (FUNC1(bp) == PI_STATE_K_DMA_UNAVAIL)
			break;
		FUNC2(100);					/* wait for 100 microseconds */
		}
	if (timeout_cnt == 0)
		return DFX_K_HW_TIMEOUT;
	return DFX_K_SUCCESS;
	}