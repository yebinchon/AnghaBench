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
struct rtsx_usb_sdmmc {struct rtsx_ucr* ucr; } ;
struct rtsx_ucr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CARD_STOP ; 
 int SD_CLR_ERR ; 
 int SD_STOP ; 
 int /*<<< orphan*/  FUNC0 (struct rtsx_ucr*) ; 
 int /*<<< orphan*/  FUNC1 (struct rtsx_ucr*) ; 
 int /*<<< orphan*/  FUNC2 (struct rtsx_ucr*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static inline void FUNC3(struct rtsx_usb_sdmmc *host)
{
	struct rtsx_ucr *ucr = host->ucr;
	FUNC2(ucr, CARD_STOP,
				  SD_STOP | SD_CLR_ERR,
				  SD_STOP | SD_CLR_ERR);

	FUNC0(ucr);
	FUNC1(ucr);
}