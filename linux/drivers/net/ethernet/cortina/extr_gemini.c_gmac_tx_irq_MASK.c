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
 int /*<<< orphan*/  FUNC0 (struct net_device*,unsigned int,int /*<<< orphan*/ ) ; 
 struct netdev_queue* FUNC1 (struct net_device*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct netdev_queue*) ; 

__attribute__((used)) static void FUNC3(struct net_device *netdev, unsigned int txq_num)
{
	struct netdev_queue *ntxq = FUNC1(netdev, txq_num);

	FUNC0(netdev, txq_num, 0);
	FUNC2(ntxq);
}