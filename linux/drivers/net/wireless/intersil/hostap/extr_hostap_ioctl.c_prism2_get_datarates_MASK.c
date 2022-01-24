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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u16 ;
struct net_device {int dummy; } ;
struct hostap_interface {TYPE_2__* local; } ;
struct TYPE_4__ {TYPE_1__* func; } ;
typedef  TYPE_2__ local_info_t ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  __le16 ;
struct TYPE_3__ {int (* get_rid ) (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  HFA384X_RID_SUPPORTEDDATARATES ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 struct hostap_interface* FUNC2 (struct net_device*) ; 
 int FUNC3 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev, u8 *rates)
{
	struct hostap_interface *iface;
	local_info_t *local;
	u8 buf[12];
	int len;
	u16 val;

	iface = FUNC2(dev);
	local = iface->local;

	len = local->func->get_rid(dev, HFA384X_RID_SUPPORTEDDATARATES, buf,
				   sizeof(buf), 0);
	if (len < 2)
		return 0;

	val = FUNC0(*(__le16 *) buf); /* string length */

	if (len - 2 < val || val > 10)
		return 0;

	FUNC1(rates, buf + 2, val);
	return val;
}