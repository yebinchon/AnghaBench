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
typedef  int u16 ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct iw_point {int length; } ;
struct hostap_interface {TYPE_2__* local; } ;
struct TYPE_4__ {TYPE_1__* func; } ;
typedef  TYPE_2__ local_info_t ;
typedef  int /*<<< orphan*/  __le16 ;
struct TYPE_3__ {int (* get_rid ) (struct net_device*,int /*<<< orphan*/ ,char**,int,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  HFA384X_RID_CNFOWNNAME ; 
 int MAX_NAME_LEN ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 struct hostap_interface* FUNC2 (struct net_device*) ; 
 int FUNC3 (struct net_device*,int /*<<< orphan*/ ,char**,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev,
				 struct iw_request_info *info,
				 struct iw_point *data, char *nickname)
{
	struct hostap_interface *iface;
	local_info_t *local;
	int len;
	char name[MAX_NAME_LEN + 3];
	u16 val;

	iface = FUNC2(dev);
	local = iface->local;

	len = local->func->get_rid(dev, HFA384X_RID_CNFOWNNAME,
				   &name, MAX_NAME_LEN + 2, 0);
	val = FUNC0(*(__le16 *) name);
	if (len > MAX_NAME_LEN + 2 || len < 0 || val > MAX_NAME_LEN)
		return -EOPNOTSUPP;

	name[val + 2] = '\0';
	data->length = val + 1;
	FUNC1(nickname, name + 2, val + 1);

	return 0;
}