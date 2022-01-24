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
struct TYPE_6__ {int flags; int /*<<< orphan*/  length; } ;
union iwreq_data {TYPE_3__ essid; } ;
struct TYPE_4__ {int /*<<< orphan*/  len; } ;
struct TYPE_5__ {TYPE_1__ el; int /*<<< orphan*/  essid; } ;
struct wl3501_card {int /*<<< orphan*/  lock; TYPE_2__ essid; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct wl3501_card* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev,
			    struct iw_request_info *info,
			    union iwreq_data *wrqu, char *extra)
{
	struct wl3501_card *this = FUNC1(dev);
	unsigned long flags;

	FUNC2(&this->lock, flags);
	wrqu->essid.flags  = 1;
	wrqu->essid.length = this->essid.el.len;
	FUNC0(extra, this->essid.essid, this->essid.el.len);
	FUNC3(&this->lock, flags);
	return 0;
}