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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u16 ;
struct wireless_dev {int dummy; } ;
struct wiphy {int dummy; } ;
struct ieee80211_channel {int /*<<< orphan*/  center_freq; } ;
struct brcmf_p2p_info {int /*<<< orphan*/  remain_on_channel_cookie; int /*<<< orphan*/  remain_on_channel; } ;
struct brcmf_cfg80211_info {struct brcmf_p2p_info p2p; } ;
typedef  int s32 ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  TRACE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC1 (struct brcmf_p2p_info*,int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC2 (struct brcmf_p2p_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct wireless_dev*,int /*<<< orphan*/ ,struct ieee80211_channel*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct ieee80211_channel*,int) ; 
 struct brcmf_cfg80211_info* FUNC6 (struct wiphy*) ; 

int FUNC7(struct wiphy *wiphy, struct wireless_dev *wdev,
				struct ieee80211_channel *channel,
				unsigned int duration, u64 *cookie)
{
	struct brcmf_cfg80211_info *cfg = FUNC6(wiphy);
	struct brcmf_p2p_info *p2p = &cfg->p2p;
	s32 err;
	u16 channel_nr;

	channel_nr = FUNC4(channel->center_freq);
	FUNC0(TRACE, "Enter, channel: %d, duration ms (%d)\n", channel_nr,
		  duration);

	err = FUNC2(p2p);
	if (err)
		goto exit;
	err = FUNC1(p2p, channel_nr, duration);
	if (err)
		goto exit;

	FUNC5(&p2p->remain_on_channel, channel, sizeof(*channel));
	*cookie = p2p->remain_on_channel_cookie;
	FUNC3(wdev, *cookie, channel, duration, GFP_KERNEL);

exit:
	return err;
}