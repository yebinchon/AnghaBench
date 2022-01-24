#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  SG_handle; } ;
struct ivtv {int /*<<< orphan*/  i_flags; TYPE_1__ udma; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  IVTV_F_I_DMA ; 
 int /*<<< orphan*/  IVTV_F_I_UDMA ; 
 int /*<<< orphan*/  IVTV_F_I_UDMA_PENDING ; 
 int /*<<< orphan*/  IVTV_REG_DECDMAADDR ; 
 int /*<<< orphan*/  IVTV_REG_DMAXFER ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 

void FUNC6(struct ivtv *itv)
{
	FUNC0("start UDMA\n");
	FUNC4(itv->udma.SG_handle, IVTV_REG_DECDMAADDR);
	FUNC5(FUNC2(IVTV_REG_DMAXFER) | 0x01, IVTV_REG_DMAXFER);
	FUNC3(IVTV_F_I_DMA, &itv->i_flags);
	FUNC3(IVTV_F_I_UDMA, &itv->i_flags);
	FUNC1(IVTV_F_I_UDMA_PENDING, &itv->i_flags);
}