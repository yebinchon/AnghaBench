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
struct rtsx_pcr {int extra_caps; int num_slots; int /*<<< orphan*/  ic_version; void* rx_initial_phase; void* tx_initial_phase; int /*<<< orphan*/  aspm_en; int /*<<< orphan*/  sd30_drive_sel_3v3; int /*<<< orphan*/  sd30_drive_sel_1v8; int /*<<< orphan*/  card_drive_sel; scalar_t__ flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  ASPM_L1_EN ; 
 int /*<<< orphan*/  DRIVER_TYPE_B ; 
 int /*<<< orphan*/  DRIVER_TYPE_D ; 
 int EXTRA_CAPS_SD_SDR104 ; 
 int EXTRA_CAPS_SD_SDR50 ; 
 int /*<<< orphan*/  RTL8411_CARD_DRIVE_DEFAULT ; 
 void* FUNC0 (int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct rtsx_pcr*) ; 

__attribute__((used)) static void FUNC2(struct rtsx_pcr *pcr)
{
	pcr->extra_caps = EXTRA_CAPS_SD_SDR50 | EXTRA_CAPS_SD_SDR104;
	pcr->num_slots = 2;
	pcr->flags = 0;
	pcr->card_drive_sel = RTL8411_CARD_DRIVE_DEFAULT;
	pcr->sd30_drive_sel_1v8 = DRIVER_TYPE_B;
	pcr->sd30_drive_sel_3v3 = DRIVER_TYPE_D;
	pcr->aspm_en = ASPM_L1_EN;
	pcr->tx_initial_phase = FUNC0(23, 7, 14);
	pcr->rx_initial_phase = FUNC0(4, 3, 10);
	pcr->ic_version = FUNC1(pcr);
}