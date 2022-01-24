#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u16 ;
struct brcms_c_info {TYPE_1__* stf; TYPE_2__** bandstate; TYPE_3__* band; } ;
struct TYPE_6__ {int /*<<< orphan*/  pi; } ;
struct TYPE_5__ {void* band_stf_stbc_tx; void* band_stf_ss_mode; } ;
struct TYPE_4__ {int ss_algosel_auto; scalar_t__ ss_algo_channel; } ;

/* Variables and functions */
 size_t BAND_2G_INDEX ; 
 size_t BAND_5G_INDEX ; 
 scalar_t__ FUNC0 (TYPE_3__*) ; 
 scalar_t__ FUNC1 (struct brcms_c_info*) ; 
 int /*<<< orphan*/  HT_CAP_RX_STBC_NO ; 
 void* OFF ; 
 scalar_t__ PHY_TPC_HW_ON ; 
 void* PHY_TXC1_MODE_CDD ; 
 void* PHY_TXC1_MODE_SISO ; 
 int /*<<< orphan*/  FUNC2 (struct brcms_c_info*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (struct brcms_c_info*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5(struct brcms_c_info *wlc)
{
	wlc->bandstate[BAND_2G_INDEX]->band_stf_ss_mode = PHY_TXC1_MODE_SISO;
	wlc->bandstate[BAND_5G_INDEX]->band_stf_ss_mode = PHY_TXC1_MODE_CDD;

	if (FUNC0(wlc->band) &&
	    (FUNC4(wlc->band->pi) != PHY_TPC_HW_ON))
		wlc->bandstate[BAND_2G_INDEX]->band_stf_ss_mode =
		    PHY_TXC1_MODE_CDD;
	FUNC2(wlc, wlc->bandstate[BAND_2G_INDEX]);
	FUNC2(wlc, wlc->bandstate[BAND_5G_INDEX]);

	FUNC3(wlc, HT_CAP_RX_STBC_NO);
	wlc->bandstate[BAND_2G_INDEX]->band_stf_stbc_tx = OFF;
	wlc->bandstate[BAND_5G_INDEX]->band_stf_stbc_tx = OFF;

	if (FUNC1(wlc)) {
		wlc->stf->ss_algosel_auto = true;
		/* Init the default value */
		wlc->stf->ss_algo_channel = (u16) -1;
	}
	return 0;
}