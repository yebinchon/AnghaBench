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
struct rtsx_hw_param {int interrupt_en; } ;
struct rtsx_pcr {int bier; int num_slots; struct rtsx_hw_param hw_param; } ;

/* Variables and functions */
 int MS_INT_EN ; 
 int /*<<< orphan*/  RTSX_BIER ; 
 int SD_INT_EN ; 
 int TRANS_FAIL_INT_EN ; 
 int TRANS_OK_INT_EN ; 
 int /*<<< orphan*/  FUNC0 (struct rtsx_pcr*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct rtsx_pcr*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct rtsx_pcr *pcr)
{
	struct rtsx_hw_param *hw_param = &pcr->hw_param;

	pcr->bier = TRANS_OK_INT_EN | TRANS_FAIL_INT_EN | SD_INT_EN
		| hw_param->interrupt_en;

	if (pcr->num_slots > 1)
		pcr->bier |= MS_INT_EN;

	/* Enable Bus Interrupt */
	FUNC1(pcr, RTSX_BIER, pcr->bier);

	FUNC0(pcr, "RTSX_BIER: 0x%08x\n", pcr->bier);
}