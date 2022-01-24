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
typedef  scalar_t__ u64 ;
typedef  scalar_t__ u32 ;
struct wireless_dev {int dummy; } ;
struct wiphy {int dummy; } ;
struct ieee80211_channel {int /*<<< orphan*/  center_freq; } ;
struct ath6kl_vif {scalar_t__ last_roc_id; int /*<<< orphan*/  fw_vif_idx; int /*<<< orphan*/  ndev; } ;
struct ath6kl {int /*<<< orphan*/  wmi; } ;

/* Variables and functions */
 struct ath6kl* FUNC0 (int /*<<< orphan*/ ) ; 
 struct ath6kl_vif* FUNC1 (struct wireless_dev*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC3(struct wiphy *wiphy,
				    struct wireless_dev *wdev,
				    struct ieee80211_channel *chan,
				    unsigned int duration,
				    u64 *cookie)
{
	struct ath6kl_vif *vif = FUNC1(wdev);
	struct ath6kl *ar = FUNC0(vif->ndev);
	u32 id;

	/* TODO: if already pending or ongoing remain-on-channel,
	 * return -EBUSY */
	id = ++vif->last_roc_id;
	if (id == 0) {
		/* Do not use 0 as the cookie value */
		id = ++vif->last_roc_id;
	}
	*cookie = id;

	return FUNC2(ar->wmi, vif->fw_vif_idx,
					     chan->center_freq, duration);
}