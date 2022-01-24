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
struct net_device {int /*<<< orphan*/  dev; } ;
struct hinic_dev {int /*<<< orphan*/ * rxqs; struct net_device* netdev; int /*<<< orphan*/  hwdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct hinic_dev *nic_dev)
{
	int i, num_rxqs = FUNC2(nic_dev->hwdev);
	struct net_device *netdev = nic_dev->netdev;

	if (!nic_dev->rxqs)
		return;

	for (i = 0; i < num_rxqs; i++)
		FUNC1(&nic_dev->rxqs[i]);

	FUNC0(&netdev->dev, nic_dev->rxqs);
	nic_dev->rxqs = NULL;
}