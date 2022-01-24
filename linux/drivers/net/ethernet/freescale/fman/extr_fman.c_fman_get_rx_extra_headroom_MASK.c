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

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,int) ; 
 scalar_t__ FSL_FM_RX_EXTRA_HEADROOM ; 
 scalar_t__ FSL_FM_RX_EXTRA_HEADROOM_MAX ; 
 scalar_t__ FSL_FM_RX_EXTRA_HEADROOM_MIN ; 
 scalar_t__ fsl_fm_rx_extra_headroom ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 

int FUNC2(void)
{
	static bool fm_check_rx_extra_headroom;

	if (!fm_check_rx_extra_headroom) {
		if (fsl_fm_rx_extra_headroom > FSL_FM_RX_EXTRA_HEADROOM_MAX ||
		    fsl_fm_rx_extra_headroom < FSL_FM_RX_EXTRA_HEADROOM_MIN) {
			FUNC1("Invalid fsl_fm_rx_extra_headroom value (%d) in bootargs, valid range is %d-%d. Falling back to the default (%d)\n",
				fsl_fm_rx_extra_headroom,
				FSL_FM_RX_EXTRA_HEADROOM_MIN,
				FSL_FM_RX_EXTRA_HEADROOM_MAX,
				FSL_FM_RX_EXTRA_HEADROOM);
			fsl_fm_rx_extra_headroom = FSL_FM_RX_EXTRA_HEADROOM;
		}

		fm_check_rx_extra_headroom = true;
		fsl_fm_rx_extra_headroom = FUNC0(fsl_fm_rx_extra_headroom, 16);
	}

	return fsl_fm_rx_extra_headroom;
}