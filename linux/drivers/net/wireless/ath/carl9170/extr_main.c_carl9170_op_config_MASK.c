#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_10__ {int /*<<< orphan*/  chan; } ;
struct TYPE_6__ {TYPE_5__ chandef; } ;
struct ieee80211_hw {TYPE_1__ conf; struct ar9170* priv; } ;
struct ar9170 {int /*<<< orphan*/  mutex; TYPE_4__* hw; } ;
typedef  enum nl80211_channel_type { ____Placeholder_nl80211_channel_type } nl80211_channel_type ;
struct TYPE_7__ {int /*<<< orphan*/  chan; } ;
struct TYPE_8__ {TYPE_2__ chandef; } ;
struct TYPE_9__ {TYPE_3__ conf; } ;

/* Variables and functions */
 int IEEE80211_CONF_CHANGE_CHANNEL ; 
 int IEEE80211_CONF_CHANGE_LISTEN_INTERVAL ; 
 int IEEE80211_CONF_CHANGE_POWER ; 
 int IEEE80211_CONF_CHANGE_PS ; 
 int IEEE80211_CONF_CHANGE_SMPS ; 
 int FUNC0 (struct ar9170*) ; 
 int FUNC1 (struct ar9170*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct ar9170*) ; 
 int FUNC3 (struct ar9170*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct ar9170*) ; 
 int FUNC5 (struct ar9170*) ; 
 int FUNC6 (struct ar9170*,int,int) ; 
 int FUNC7 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct ieee80211_hw *hw, u32 changed)
{
	struct ar9170 *ar = hw->priv;
	int err = 0;

	FUNC8(&ar->mutex);
	if (changed & IEEE80211_CONF_CHANGE_LISTEN_INTERVAL) {
		/* TODO */
		err = 0;
	}

	if (changed & IEEE80211_CONF_CHANGE_PS) {
		err = FUNC0(ar);
		if (err)
			goto out;
	}

	if (changed & IEEE80211_CONF_CHANGE_SMPS) {
		/* TODO */
		err = 0;
	}

	if (changed & IEEE80211_CONF_CHANGE_CHANNEL) {
		enum nl80211_channel_type channel_type =
			FUNC7(&hw->conf.chandef);

		/* adjust slot time for 5 GHz */
		err = FUNC5(ar);
		if (err)
			goto out;

		err = FUNC6(ar, true, false);
		if (err)
			goto out;

		err = FUNC1(ar, hw->conf.chandef.chan,
					   channel_type);
		if (err)
			goto out;

		err = FUNC6(ar, false, true);
		if (err)
			goto out;

		err = FUNC2(ar);
		if (err)
			goto out;

		err = FUNC4(ar);
		if (err)
			goto out;
	}

	if (changed & IEEE80211_CONF_CHANGE_POWER) {
		err = FUNC3(ar, ar->hw->conf.chandef.chan);
		if (err)
			goto out;
	}

out:
	FUNC9(&ar->mutex);
	return err;
}