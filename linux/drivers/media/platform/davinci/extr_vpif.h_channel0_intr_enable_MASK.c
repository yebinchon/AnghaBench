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
 int /*<<< orphan*/  VPIF_INTEN ; 
 int VPIF_INTEN_FRAME_CH0 ; 
 int /*<<< orphan*/  VPIF_INTEN_SET ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  vpif_lock ; 

__attribute__((used)) static inline void FUNC4(int enable)
{
	unsigned long flags;

	FUNC2(&vpif_lock, flags);

	if (enable) {
		FUNC1((FUNC0(VPIF_INTEN) | 0x10), VPIF_INTEN);
		FUNC1((FUNC0(VPIF_INTEN_SET) | 0x10), VPIF_INTEN_SET);

		FUNC1((FUNC0(VPIF_INTEN) | VPIF_INTEN_FRAME_CH0), VPIF_INTEN);
		FUNC1((FUNC0(VPIF_INTEN_SET) | VPIF_INTEN_FRAME_CH0),
							VPIF_INTEN_SET);
	} else {
		FUNC1((FUNC0(VPIF_INTEN) & (~VPIF_INTEN_FRAME_CH0)), VPIF_INTEN);
		FUNC1((FUNC0(VPIF_INTEN_SET) | VPIF_INTEN_FRAME_CH0),
							VPIF_INTEN_SET);
	}
	FUNC3(&vpif_lock, flags);
}