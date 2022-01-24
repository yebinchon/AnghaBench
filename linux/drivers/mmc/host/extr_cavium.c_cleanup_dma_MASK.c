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
typedef  int u64 ;
struct cvm_mmc_host {scalar_t__ base; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (struct cvm_mmc_host*) ; 
 int /*<<< orphan*/  MIO_EMM_DMA_DAT_NULL ; 
 int /*<<< orphan*/  MIO_EMM_DMA_VAL ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC6(struct cvm_mmc_host *host, u64 rsp_sts)
{
	u64 emm_dma;

	emm_dma = FUNC3(host->base + FUNC1(host));
	emm_dma |= FUNC0(MIO_EMM_DMA_VAL, 1) |
		   FUNC0(MIO_EMM_DMA_DAT_NULL, 1);
	FUNC4(&emm_dma, FUNC2(rsp_sts));
	FUNC5(emm_dma, host->base + FUNC1(host));
}