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
struct rtsx_pcr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CARD_CLK_SOURCE ; 
 int /*<<< orphan*/  CLK_CTL ; 
 int CLK_LOW_FREQ ; 
 int CRC_VAR_CLK0 ; 
 int SAMPLE_VAR_CLK1 ; 
 int SD30_FIX_CLK ; 
 int SD_30_MODE ; 
 int SD_ASYNC_FIFO_NOT_RST ; 
 int /*<<< orphan*/  SD_CFG1 ; 
 int SD_MODE_SELECT_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct rtsx_pcr*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC1(struct rtsx_pcr *pcr)
{
	FUNC0(pcr, SD_CFG1, SD_MODE_SELECT_MASK
		| SD_ASYNC_FIFO_NOT_RST, SD_30_MODE | SD_ASYNC_FIFO_NOT_RST);
	FUNC0(pcr, CLK_CTL, CLK_LOW_FREQ, CLK_LOW_FREQ);
	FUNC0(pcr, CARD_CLK_SOURCE, 0xFF,
			CRC_VAR_CLK0 | SD30_FIX_CLK | SAMPLE_VAR_CLK1);
	FUNC0(pcr, CLK_CTL, CLK_LOW_FREQ, 0);

	return 0;
}