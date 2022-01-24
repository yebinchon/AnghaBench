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
typedef  int u32 ;
struct ath_hw_radar_conf {scalar_t__ ext_channel; int /*<<< orphan*/  radar_inband; int /*<<< orphan*/  pulse_inband_step; int /*<<< orphan*/  pulse_maxlen; int /*<<< orphan*/  pulse_inband; int /*<<< orphan*/  pulse_rssi; int /*<<< orphan*/  pulse_height; int /*<<< orphan*/  radar_rssi; int /*<<< orphan*/  fir_power; } ;
struct ath_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR_PHY_RADAR_0 ; 
 int AR_PHY_RADAR_0_ENA ; 
 int AR_PHY_RADAR_0_FFT_ENA ; 
 int AR_PHY_RADAR_0_FIRPWR ; 
 int AR_PHY_RADAR_0_HEIGHT ; 
 int AR_PHY_RADAR_0_INBAND ; 
 int AR_PHY_RADAR_0_PRSSI ; 
 int AR_PHY_RADAR_0_RRSSI ; 
 int /*<<< orphan*/  AR_PHY_RADAR_1 ; 
 int AR_PHY_RADAR_1_BLOCK_CHECK ; 
 int AR_PHY_RADAR_1_MAXLEN ; 
 int AR_PHY_RADAR_1_MAX_RRSSI ; 
 int AR_PHY_RADAR_1_RELPWR_THRESH ; 
 int AR_PHY_RADAR_1_RELSTEP_THRESH ; 
 int /*<<< orphan*/  AR_PHY_RADAR_EXT ; 
 int AR_PHY_RADAR_EXT_ENA ; 
 int /*<<< orphan*/  FUNC0 (struct ath_hw*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct ath_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hw*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(struct ath_hw *ah,
				       struct ath_hw_radar_conf *conf)
{
	u32 radar_0 = 0, radar_1;

	if (!conf) {
		FUNC0(ah, AR_PHY_RADAR_0, AR_PHY_RADAR_0_ENA);
		return;
	}

	radar_0 |= AR_PHY_RADAR_0_ENA | AR_PHY_RADAR_0_FFT_ENA;
	radar_0 |= FUNC4(conf->fir_power, AR_PHY_RADAR_0_FIRPWR);
	radar_0 |= FUNC4(conf->radar_rssi, AR_PHY_RADAR_0_RRSSI);
	radar_0 |= FUNC4(conf->pulse_height, AR_PHY_RADAR_0_HEIGHT);
	radar_0 |= FUNC4(conf->pulse_rssi, AR_PHY_RADAR_0_PRSSI);
	radar_0 |= FUNC4(conf->pulse_inband, AR_PHY_RADAR_0_INBAND);

	radar_1 = FUNC1(ah, AR_PHY_RADAR_1);
	radar_1 &= ~(AR_PHY_RADAR_1_MAXLEN | AR_PHY_RADAR_1_RELSTEP_THRESH |
		     AR_PHY_RADAR_1_RELPWR_THRESH);
	radar_1 |= AR_PHY_RADAR_1_MAX_RRSSI;
	radar_1 |= AR_PHY_RADAR_1_BLOCK_CHECK;
	radar_1 |= FUNC4(conf->pulse_maxlen, AR_PHY_RADAR_1_MAXLEN);
	radar_1 |= FUNC4(conf->pulse_inband_step, AR_PHY_RADAR_1_RELSTEP_THRESH);
	radar_1 |= FUNC4(conf->radar_inband, AR_PHY_RADAR_1_RELPWR_THRESH);

	FUNC3(ah, AR_PHY_RADAR_0, radar_0);
	FUNC3(ah, AR_PHY_RADAR_1, radar_1);
	if (conf->ext_channel)
		FUNC2(ah, AR_PHY_RADAR_EXT, AR_PHY_RADAR_EXT_ENA);
	else
		FUNC0(ah, AR_PHY_RADAR_EXT, AR_PHY_RADAR_EXT_ENA);
}