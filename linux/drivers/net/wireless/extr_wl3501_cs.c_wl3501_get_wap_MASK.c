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
struct TYPE_2__ {int /*<<< orphan*/  sa_data; int /*<<< orphan*/  sa_family; } ;
union iwreq_data {TYPE_1__ ap_addr; } ;
struct wl3501_card {int /*<<< orphan*/  bssid; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARPHRD_ETHER ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct wl3501_card* FUNC1 (struct net_device*) ; 

__attribute__((used)) static int FUNC2(struct net_device *dev, struct iw_request_info *info,
			  union iwreq_data *wrqu, char *extra)
{
	struct wl3501_card *this = FUNC1(dev);

	wrqu->ap_addr.sa_family = ARPHRD_ETHER;
	FUNC0(wrqu->ap_addr.sa_data, this->bssid, ETH_ALEN);
	return 0;
}