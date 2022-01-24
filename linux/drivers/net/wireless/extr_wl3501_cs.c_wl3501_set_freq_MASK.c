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
struct TYPE_2__ {int m; } ;
union iwreq_data {TYPE_1__ freq; } ;
struct wl3501_card {int chan; int /*<<< orphan*/  reg_domain; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 struct wl3501_card* FUNC1 (struct net_device*) ; 
 int FUNC2 (struct net_device*) ; 

__attribute__((used)) static int FUNC3(struct net_device *dev, struct iw_request_info *info,
			   union iwreq_data *wrqu, char *extra)
{
	struct wl3501_card *this = FUNC1(dev);
	int channel = wrqu->freq.m;
	int rc = -EINVAL;

	if (FUNC0(this->reg_domain, channel)) {
		this->chan = channel;
		rc = FUNC2(dev);
	}
	return rc;
}