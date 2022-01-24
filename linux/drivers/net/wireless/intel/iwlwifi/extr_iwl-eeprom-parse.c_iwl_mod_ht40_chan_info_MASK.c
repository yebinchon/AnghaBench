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
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u16 ;
struct iwl_nvm_data {struct ieee80211_channel* channels; } ;
struct iwl_eeprom_channel {int flags; int /*<<< orphan*/  max_power_avg; } ;
struct ieee80211_channel {int band; scalar_t__ hw_value; int /*<<< orphan*/  flags; } ;
struct device {int dummy; } ;
typedef  enum nl80211_band { ____Placeholder_nl80211_band } nl80211_band ;

/* Variables and functions */
 int /*<<< orphan*/  ACTIVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DFS ; 
 int EEPROM_CHANNEL_IBSS ; 
 int EEPROM_CHANNEL_RADAR ; 
 int EEPROM_CHANNEL_VALID ; 
 int /*<<< orphan*/  IBSS ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,scalar_t__,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,char*) ; 
 int NL80211_BAND_5GHZ ; 
 int /*<<< orphan*/  RADAR ; 
 int /*<<< orphan*/  WIDE ; 

__attribute__((used)) static void FUNC2(struct device *dev,
				   struct iwl_nvm_data *data, int n_channels,
				   enum nl80211_band band, u16 channel,
				   const struct iwl_eeprom_channel *eeprom_ch,
				   u8 clear_ht40_extension_channel)
{
	struct ieee80211_channel *chan = NULL;
	int i;

	for (i = 0; i < n_channels; i++) {
		if (data->channels[i].band != band)
			continue;
		if (data->channels[i].hw_value != channel)
			continue;
		chan = &data->channels[i];
		break;
	}

	if (!chan)
		return;

	FUNC1(dev,
			 "HT40 Ch. %d [%sGHz] %s%s%s%s%s(0x%02x %ddBm): Ad-Hoc %ssupported\n",
			 channel,
			 band == NL80211_BAND_5GHZ ? "5.2" : "2.4",
			 FUNC0(IBSS),
			 FUNC0(ACTIVE),
			 FUNC0(RADAR),
			 FUNC0(WIDE),
			 FUNC0(DFS),
			 eeprom_ch->flags,
			 eeprom_ch->max_power_avg,
			 ((eeprom_ch->flags & EEPROM_CHANNEL_IBSS) &&
			  !(eeprom_ch->flags & EEPROM_CHANNEL_RADAR)) ? ""
								      : "not ");

	if (eeprom_ch->flags & EEPROM_CHANNEL_VALID)
		chan->flags &= ~clear_ht40_extension_channel;
}