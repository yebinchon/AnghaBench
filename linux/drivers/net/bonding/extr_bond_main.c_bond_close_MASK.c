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
struct net_device {int dummy; } ;
struct bonding {int /*<<< orphan*/ * recv_probe; scalar_t__ send_peer_notif; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bonding*) ; 
 scalar_t__ FUNC1 (struct bonding*) ; 
 int /*<<< orphan*/  FUNC2 (struct bonding*) ; 
 struct bonding* FUNC3 (struct net_device*) ; 

__attribute__((used)) static int FUNC4(struct net_device *bond_dev)
{
	struct bonding *bond = FUNC3(bond_dev);

	FUNC2(bond);
	bond->send_peer_notif = 0;
	if (FUNC1(bond))
		FUNC0(bond);
	bond->recv_probe = NULL;

	return 0;
}