#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  sa_data; } ;
union iwreq_data {TYPE_1__ ap_addr; } ;
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_6__ {scalar_t__ iw_mode; int /*<<< orphan*/  dev; int /*<<< orphan*/  bssid; } ;
typedef  TYPE_2__ local_info_t ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 int /*<<< orphan*/  IEEE80211_STYPE_DEAUTH ; 
 scalar_t__ IW_MODE_INFRA ; 
 int /*<<< orphan*/  SIOCGIWAP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,union iwreq_data*,int /*<<< orphan*/ *) ; 

int FUNC6(local_info_t *local, u16 reason)
{
	union iwreq_data wrqu;
	int ret;
	__le16 val = FUNC0(reason);

	if (local->iw_mode != IW_MODE_INFRA ||
	    FUNC3(local->bssid) ||
	    FUNC2(local->bssid, "\x44\x44\x44\x44\x44\x44"))
		return 0;

	ret = FUNC4(local, local->bssid, IEEE80211_STYPE_DEAUTH,
				   (u8 *) &val, 2);
	FUNC1(wrqu.ap_addr.sa_data);
	FUNC5(local->dev, SIOCGIWAP, &wrqu, NULL);
	return ret;
}