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
struct ivtv {int /*<<< orphan*/  dma_reg_lock; int /*<<< orphan*/  i_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  IVTV_F_I_DMA ; 
 int /*<<< orphan*/  IVTV_F_I_UDMA_PENDING ; 
 int /*<<< orphan*/  FUNC0 (struct ivtv*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC5(struct ivtv *itv)
{
	unsigned long flags;

	FUNC2(&itv->dma_reg_lock, flags);
	if (!FUNC4(IVTV_F_I_DMA, &itv->i_flags))
		FUNC0(itv);
	else
		FUNC1(IVTV_F_I_UDMA_PENDING, &itv->i_flags);
	FUNC3(&itv->dma_reg_lock, flags);
}