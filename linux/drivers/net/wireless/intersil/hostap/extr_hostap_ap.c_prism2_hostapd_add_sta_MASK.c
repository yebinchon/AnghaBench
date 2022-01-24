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
struct sta_info {int flags; int tx_supp_rates; int* supported_rates; int /*<<< orphan*/  users; int /*<<< orphan*/  capability; int /*<<< orphan*/  aid; int /*<<< orphan*/  last_rx; TYPE_1__* local; int /*<<< orphan*/  ap; } ;
struct TYPE_5__ {int tx_supp_rates; int /*<<< orphan*/  capability; int /*<<< orphan*/  aid; } ;
struct TYPE_6__ {TYPE_2__ add_sta; } ;
struct prism2_hostapd_param {TYPE_3__ u; int /*<<< orphan*/  sta_addr; } ;
struct ap_data {int /*<<< orphan*/  sta_table_lock; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int WLAN_RATE_11M ; 
 int WLAN_RATE_1M ; 
 int WLAN_RATE_2M ; 
 int WLAN_RATE_5M5 ; 
 int WLAN_STA_ASSOC ; 
 int WLAN_STA_AUTH ; 
 struct sta_info* FUNC0 (struct ap_data*,int /*<<< orphan*/ ) ; 
 struct sta_info* FUNC1 (struct ap_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct sta_info*) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC5 (struct sta_info*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct ap_data *ap,
				  struct prism2_hostapd_param *param)
{
	struct sta_info *sta;

	FUNC6(&ap->sta_table_lock);
	sta = FUNC1(ap, param->sta_addr);
	if (sta)
		FUNC3(&sta->users);
	FUNC7(&ap->sta_table_lock);

	if (sta == NULL) {
		sta = FUNC0(ap, param->sta_addr);
		if (sta == NULL)
			return -1;
	}

	if (!(sta->flags & WLAN_STA_ASSOC) && !sta->ap && sta->local)
		FUNC4(sta->local->dev, sta);

	sta->flags |= WLAN_STA_AUTH | WLAN_STA_ASSOC;
	sta->last_rx = jiffies;
	sta->aid = param->u.add_sta.aid;
	sta->capability = param->u.add_sta.capability;
	sta->tx_supp_rates = param->u.add_sta.tx_supp_rates;
	if (sta->tx_supp_rates & WLAN_RATE_1M)
		sta->supported_rates[0] = 2;
	if (sta->tx_supp_rates & WLAN_RATE_2M)
		sta->supported_rates[1] = 4;
 	if (sta->tx_supp_rates & WLAN_RATE_5M5)
		sta->supported_rates[2] = 11;
	if (sta->tx_supp_rates & WLAN_RATE_11M)
		sta->supported_rates[3] = 22;
	FUNC5(sta);
	FUNC2(&sta->users);
	return 0;
}