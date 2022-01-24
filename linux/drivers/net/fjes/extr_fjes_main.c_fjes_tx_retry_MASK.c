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
struct netdev_queue {int dummy; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 struct netdev_queue* FUNC0 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct netdev_queue*) ; 

__attribute__((used)) static void FUNC2(struct net_device *netdev)
{
	struct netdev_queue *queue = FUNC0(netdev, 0);

	FUNC1(queue);
}