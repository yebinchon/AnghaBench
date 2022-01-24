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
struct usbnet {int dummy; } ;
struct TYPE_2__ {int legacy; } ;
struct station_info {int /*<<< orphan*/  filled; int /*<<< orphan*/  signal; TYPE_1__ txrate; } ;
typedef  int /*<<< orphan*/  rssi ;
typedef  int /*<<< orphan*/  linkspeed ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NL80211_STA_INFO_SIGNAL ; 
 int /*<<< orphan*/  NL80211_STA_INFO_TX_BITRATE ; 
 int /*<<< orphan*/  RNDIS_OID_802_11_RSSI ; 
 int /*<<< orphan*/  RNDIS_OID_GEN_LINK_SPEED ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct station_info*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct usbnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 

__attribute__((used)) static void FUNC5(struct usbnet *usbdev,
						struct station_info *sinfo)
{
	__le32 linkspeed, rssi;
	int ret, len;

	FUNC3(sinfo, 0, sizeof(*sinfo));

	len = sizeof(linkspeed);
	ret = FUNC4(usbdev, RNDIS_OID_GEN_LINK_SPEED, &linkspeed, &len);
	if (ret == 0) {
		sinfo->txrate.legacy = FUNC1(linkspeed) / 1000;
		sinfo->filled |= FUNC0(NL80211_STA_INFO_TX_BITRATE);
	}

	len = sizeof(rssi);
	ret = FUNC4(usbdev, RNDIS_OID_802_11_RSSI,
			      &rssi, &len);
	if (ret == 0) {
		sinfo->signal = FUNC2(FUNC1(rssi));
		sinfo->filled |= FUNC0(NL80211_STA_INFO_SIGNAL);
	}
}