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
struct hinic_txq {int /*<<< orphan*/  sges; int /*<<< orphan*/  free_sges; int /*<<< orphan*/  irq_name; struct net_device* netdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hinic_txq*) ; 
 int /*<<< orphan*/  FUNC2 (struct hinic_txq*) ; 

void FUNC3(struct hinic_txq *txq)
{
	struct net_device *netdev = txq->netdev;

	FUNC2(txq);

	FUNC1(txq);

	FUNC0(&netdev->dev, txq->irq_name);
	FUNC0(&netdev->dev, txq->free_sges);
	FUNC0(&netdev->dev, txq->sges);
}