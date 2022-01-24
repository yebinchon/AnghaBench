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
struct enic {scalar_t__ flags; scalar_t__ uc_count; scalar_t__ mc_count; struct net_device* netdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int /*<<< orphan*/ *) ; 

void FUNC2(struct enic *enic)
{
	struct net_device *netdev = enic->netdev;

	FUNC1(netdev, NULL);
	FUNC0(netdev, NULL);

	enic->mc_count = 0;
	enic->uc_count = 0;
	enic->flags = 0;
}