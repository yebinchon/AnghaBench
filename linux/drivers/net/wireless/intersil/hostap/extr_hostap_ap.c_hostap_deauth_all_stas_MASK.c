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
struct net_device {int /*<<< orphan*/  name; } ;
struct ap_data {scalar_t__ num_sta; } ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG_AP ; 
 int ETH_ALEN ; 
 int IEEE80211_FTYPE_MGMT ; 
 int IEEE80211_STYPE_DEAUTH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WLAN_REASON_PREV_AUTH_NOT_VALID ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,int,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC5(struct net_device *dev, struct ap_data *ap,
			    int resend)
{
	u8 addr[ETH_ALEN];
	__le16 resp;
	int i;

	FUNC0(DEBUG_AP, "%s: Deauthenticate all stations\n", dev->name);
	FUNC2(addr);

	resp = FUNC1(WLAN_REASON_PREV_AUTH_NOT_VALID);

	/* deauth message sent; try to resend it few times; the message is
	 * broadcast, so it may be delayed until next DTIM; there is not much
	 * else we can do at this point since the driver is going to be shut
	 * down */
	for (i = 0; i < 5; i++) {
		FUNC4(dev, IEEE80211_FTYPE_MGMT |
				 IEEE80211_STYPE_DEAUTH,
				 (char *) &resp, 2, addr, 0);

		if (!resend || ap->num_sta <= 0)
			return;

		FUNC3(50);
	}
}