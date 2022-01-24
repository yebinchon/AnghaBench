#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct iw_point {int /*<<< orphan*/  length; } ;
struct hostap_interface {TYPE_2__* local; } ;
struct TYPE_4__ {int name_set; TYPE_1__* func; int /*<<< orphan*/  name; } ;
typedef  TYPE_2__ local_info_t ;
struct TYPE_3__ {scalar_t__ (* reset_port ) (struct net_device*) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  HFA384X_RID_CNFOWNNAME ; 
 scalar_t__ FUNC0 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct hostap_interface* FUNC3 (struct net_device*) ; 
 scalar_t__ FUNC4 (struct net_device*) ; 

__attribute__((used)) static int FUNC5(struct net_device *dev,
				 struct iw_request_info *info,
				 struct iw_point *data, char *nickname)
{
	struct hostap_interface *iface;
	local_info_t *local;

	iface = FUNC3(dev);
	local = iface->local;

	FUNC2(local->name, 0, sizeof(local->name));
	FUNC1(local->name, nickname, data->length);
	local->name_set = 1;

	if (FUNC0(dev, HFA384X_RID_CNFOWNNAME, local->name) ||
	    local->func->reset_port(dev))
		return -EINVAL;

	return 0;
}