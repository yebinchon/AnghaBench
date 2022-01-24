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
struct xgbe_prv_data {scalar_t__ awarcr; scalar_t__ awcr; scalar_t__ arcr; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_AXIARCR ; 
 int /*<<< orphan*/  DMA_AXIAWARCR ; 
 int /*<<< orphan*/  DMA_AXIAWCR ; 
 int /*<<< orphan*/  FUNC0 (struct xgbe_prv_data*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC1(struct xgbe_prv_data *pdata)
{
	FUNC0(pdata, DMA_AXIARCR, pdata->arcr);
	FUNC0(pdata, DMA_AXIAWCR, pdata->awcr);
	if (pdata->awarcr)
		FUNC0(pdata, DMA_AXIAWARCR, pdata->awarcr);
}