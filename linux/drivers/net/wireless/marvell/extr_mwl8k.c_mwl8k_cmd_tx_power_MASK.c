#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {void* length; void* code; } ;
struct mwl8k_cmd_tx_power {TYPE_1__ header; void** power_level_list; void* sub_ch; void* bw; void* channel; void* band; void* action; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_4__ {struct ieee80211_channel* chan; } ;
struct ieee80211_conf {TYPE_2__ chandef; } ;
struct ieee80211_channel {scalar_t__ band; unsigned short hw_value; } ;
typedef  enum nl80211_channel_type { ____Placeholder_nl80211_channel_type } nl80211_channel_type ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned short MWL8K_CMD_SET_LIST ; 
 unsigned short MWL8K_CMD_TX_POWER ; 
 int MWL8K_TX_POWER_LEVEL_TOTAL ; 
 scalar_t__ NL80211_BAND_2GHZ ; 
 scalar_t__ NL80211_BAND_5GHZ ; 
 int NL80211_CHAN_HT20 ; 
 int NL80211_CHAN_HT40MINUS ; 
 int NL80211_CHAN_HT40PLUS ; 
 int NL80211_CHAN_NO_HT ; 
 int FUNC0 (TYPE_2__*) ; 
 void* FUNC1 (unsigned short) ; 
 int /*<<< orphan*/  FUNC2 (struct mwl8k_cmd_tx_power*) ; 
 struct mwl8k_cmd_tx_power* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct ieee80211_hw*,TYPE_1__*) ; 

__attribute__((used)) static int FUNC5(struct ieee80211_hw *hw,
				     struct ieee80211_conf *conf,
				     unsigned short pwr)
{
	struct ieee80211_channel *channel = conf->chandef.chan;
	enum nl80211_channel_type channel_type =
		FUNC0(&conf->chandef);
	struct mwl8k_cmd_tx_power *cmd;
	int rc;
	int i;

	cmd = FUNC3(sizeof(*cmd), GFP_KERNEL);
	if (cmd == NULL)
		return -ENOMEM;

	cmd->header.code = FUNC1(MWL8K_CMD_TX_POWER);
	cmd->header.length = FUNC1(sizeof(*cmd));
	cmd->action = FUNC1(MWL8K_CMD_SET_LIST);

	if (channel->band == NL80211_BAND_2GHZ)
		cmd->band = FUNC1(0x1);
	else if (channel->band == NL80211_BAND_5GHZ)
		cmd->band = FUNC1(0x4);

	cmd->channel = FUNC1(channel->hw_value);

	if (channel_type == NL80211_CHAN_NO_HT ||
	    channel_type == NL80211_CHAN_HT20) {
		cmd->bw = FUNC1(0x2);
	} else {
		cmd->bw = FUNC1(0x4);
		if (channel_type == NL80211_CHAN_HT40MINUS)
			cmd->sub_ch = FUNC1(0x3);
		else if (channel_type == NL80211_CHAN_HT40PLUS)
			cmd->sub_ch = FUNC1(0x1);
	}

	for (i = 0; i < MWL8K_TX_POWER_LEVEL_TOTAL; i++)
		cmd->power_level_list[i] = FUNC1(pwr);

	rc = FUNC4(hw, &cmd->header);
	FUNC2(cmd);

	return rc;
}