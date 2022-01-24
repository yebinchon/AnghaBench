#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
typedef  int u16 ;
struct ath_softc {struct ath_hw* sc_ah; } ;
struct ath9k_hw_mci {int* wlan_channels; } ;
struct TYPE_2__ {struct ath9k_hw_mci mci; } ;
struct ath_hw {struct ath9k_channel* curchan; TYPE_1__ btcoex_hw; } ;
struct ath9k_channel {int channel; } ;
typedef  int s16 ;

/* Variables and functions */
 int ATH_MCI_NUM_BT_CHANNELS ; 
 int /*<<< orphan*/  FUNC0 (struct ath9k_channel*) ; 
 scalar_t__ FUNC1 (struct ath9k_channel*) ; 
 scalar_t__ FUNC2 (struct ath9k_channel*) ; 
 int /*<<< orphan*/  MCI ; 
 int /*<<< orphan*/  FUNC3 (int**,int) ; 
 int /*<<< orphan*/  MCI_STATE_SEND_VERSION_QUERY ; 
 int /*<<< orphan*/  FUNC4 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC5 (struct ath_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int,int) ; 

void FUNC8(struct ath_softc *sc, bool allow_all)
{
	struct ath_hw *ah = sc->sc_ah;
	struct ath9k_hw_mci *mci = &ah->btcoex_hw.mci;
	struct ath9k_channel *chan = ah->curchan;
	u32 channelmap[] = {0x00000000, 0xffff0000, 0xffffffff, 0x7fffffff};
	int i;
	s16 chan_start, chan_end;
	u16 wlan_chan;

	if (!chan || !FUNC0(chan))
		return;

	if (allow_all)
		goto send_wlan_chan;

	wlan_chan = chan->channel - 2402;

	chan_start = wlan_chan - 10;
	chan_end = wlan_chan + 10;

	if (FUNC2(chan))
		chan_end += 20;
	else if (FUNC1(chan))
		chan_start -= 20;

	/* adjust side band */
	chan_start -= 7;
	chan_end += 7;

	if (chan_start <= 0)
		chan_start = 0;
	if (chan_end >= ATH_MCI_NUM_BT_CHANNELS)
		chan_end = ATH_MCI_NUM_BT_CHANNELS - 1;

	FUNC7(FUNC6(ah), MCI,
		"WLAN current channel %d mask BT channel %d - %d\n",
		wlan_chan, chan_start, chan_end);

	for (i = chan_start; i < chan_end; i++)
		FUNC3(&channelmap, i);

send_wlan_chan:
	/* update and send wlan channels info to BT */
	for (i = 0; i < 4; i++)
		mci->wlan_channels[i] = channelmap[i];
	FUNC4(ah);
	FUNC5(ah, MCI_STATE_SEND_VERSION_QUERY);
}