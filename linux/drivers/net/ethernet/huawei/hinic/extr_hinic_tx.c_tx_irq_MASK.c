#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct hinic_txq {int /*<<< orphan*/  napi; TYPE_1__* sq; int /*<<< orphan*/  netdev; } ;
struct hinic_dev {int /*<<< orphan*/  hwdev; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int /*<<< orphan*/  msix_entry; } ;

/* Variables and functions */
 int /*<<< orphan*/  HINIC_MSIX_DISABLE ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct hinic_dev* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *data)
{
	struct hinic_txq *txq = data;
	struct hinic_dev *nic_dev;

	nic_dev = FUNC3(txq->netdev);

	/* Disable the interrupt until napi will be completed */
	FUNC1(nic_dev->hwdev,
				   txq->sq->msix_entry,
				   HINIC_MSIX_DISABLE);

	FUNC0(nic_dev->hwdev, txq->sq->msix_entry);

	FUNC2(&txq->napi);
	return IRQ_HANDLED;
}