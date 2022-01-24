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
 int /*<<< orphan*/  CARD_CLK_EN ; 
 int /*<<< orphan*/  CARD_OE ; 
 int MS_CLK_EN ; 
 int /*<<< orphan*/  RTSX_SD_CARD ; 
 int SD40_CLK_EN ; 
 int SD_CLK_EN ; 
 int SD_OUTPUT_EN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct rtsx_pcr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rtsx_pcr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rtsx_pcr*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

int FUNC4(struct rtsx_pcr *pcr)
{
	FUNC3(pcr, CARD_CLK_EN, SD_CLK_EN |
		MS_CLK_EN | SD40_CLK_EN, 0);
	FUNC3(pcr, CARD_OE, SD_OUTPUT_EN, 0);
	FUNC1(pcr, RTSX_SD_CARD);

	FUNC0(50);

	FUNC2(pcr, RTSX_SD_CARD);

	return 0;
}