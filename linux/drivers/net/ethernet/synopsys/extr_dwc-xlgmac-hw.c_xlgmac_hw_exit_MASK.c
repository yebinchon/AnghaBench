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
struct xlgmac_pdata {scalar_t__ mac_regs; } ;

/* Variables and functions */
 scalar_t__ DMA_MR ; 
 int /*<<< orphan*/  DMA_MR_SWR_LEN ; 
 int /*<<< orphan*/  DMA_MR_SWR_POS ; 
 int EBUSY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct xlgmac_pdata *pdata)
{
	unsigned int count = 2000;
	u32 regval;

	/* Issue a software reset */
	regval = FUNC2(pdata->mac_regs + DMA_MR);
	regval = FUNC1(regval, DMA_MR_SWR_POS,
				     DMA_MR_SWR_LEN, 1);
	FUNC4(regval, pdata->mac_regs + DMA_MR);
	FUNC3(10, 15);

	/* Poll Until Poll Condition */
	while (--count &&
	       FUNC0(FUNC2(pdata->mac_regs + DMA_MR),
				   DMA_MR_SWR_POS, DMA_MR_SWR_LEN))
		FUNC3(500, 600);

	if (!count)
		return -EBUSY;

	return 0;
}