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
struct chan_centers {scalar_t__ synth_center; scalar_t__ ext_center; scalar_t__ ctl_center; } ;
struct ath_hw {int dummy; } ;
struct ath9k_channel {scalar_t__ channel; } ;
typedef  int int8_t ;

/* Variables and functions */
 int HT40_CHANNEL_CENTER_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (struct ath9k_channel*) ; 
 scalar_t__ FUNC1 (struct ath9k_channel*) ; 

void FUNC2(struct ath_hw *ah,
				  struct ath9k_channel *chan,
				  struct chan_centers *centers)
{
	int8_t extoff;

	if (!FUNC0(chan)) {
		centers->ctl_center = centers->ext_center =
			centers->synth_center = chan->channel;
		return;
	}

	if (FUNC1(chan)) {
		centers->synth_center =
			chan->channel + HT40_CHANNEL_CENTER_SHIFT;
		extoff = 1;
	} else {
		centers->synth_center =
			chan->channel - HT40_CHANNEL_CENTER_SHIFT;
		extoff = -1;
	}

	centers->ctl_center =
		centers->synth_center - (extoff * HT40_CHANNEL_CENTER_SHIFT);
	/* 25 MHz spacing is supported by hw but not on upper layers */
	centers->ext_center =
		centers->synth_center + (extoff * HT40_CHANNEL_CENTER_SHIFT);
}