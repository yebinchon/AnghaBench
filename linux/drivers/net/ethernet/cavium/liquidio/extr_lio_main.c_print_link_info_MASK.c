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
struct TYPE_3__ {scalar_t__ duplex; int /*<<< orphan*/  speed; scalar_t__ link_up; } ;
struct TYPE_4__ {TYPE_1__ s; } ;
struct oct_link_info {TYPE_2__ link; } ;
struct net_device {int dummy; } ;
struct lio {int /*<<< orphan*/  netdev; struct oct_link_info linfo; } ;

/* Variables and functions */
 struct lio* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  LIO_IFSTATE_REGISTERED ; 
 int /*<<< orphan*/  LIO_IFSTATE_RESETTING ; 
 scalar_t__ FUNC1 (struct lio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  link ; 
 int /*<<< orphan*/  FUNC2 (struct lio*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static void FUNC3(struct net_device *netdev)
{
	struct lio *lio = FUNC0(netdev);

	if (!FUNC1(lio, LIO_IFSTATE_RESETTING) &&
	    FUNC1(lio, LIO_IFSTATE_REGISTERED)) {
		struct oct_link_info *linfo = &lio->linfo;

		if (linfo->link.s.link_up) {
			FUNC2(lio, link, lio->netdev, "%d Mbps %s Duplex UP\n",
				   linfo->link.s.speed,
				   (linfo->link.s.duplex) ? "Full" : "Half");
		} else {
			FUNC2(lio, link, lio->netdev, "Link Down\n");
		}
	}
}