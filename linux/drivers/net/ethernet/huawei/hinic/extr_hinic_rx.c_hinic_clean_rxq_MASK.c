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
struct hinic_rxq {int /*<<< orphan*/  irq_name; struct net_device* netdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hinic_rxq*) ; 
 int /*<<< orphan*/  FUNC2 (struct hinic_rxq*) ; 

void FUNC3(struct hinic_rxq *rxq)
{
	struct net_device *netdev = rxq->netdev;

	FUNC2(rxq);

	FUNC1(rxq);
	FUNC0(&netdev->dev, rxq->irq_name);
}