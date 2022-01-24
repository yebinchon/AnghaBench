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
struct mlxsw_pci_queue {int dummy; } ;
struct mlxsw_pci {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int MLXSW_PCI_EQS_COUNT ; 
 struct mlxsw_pci_queue* FUNC0 (struct mlxsw_pci*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mlxsw_pci_queue*) ; 

__attribute__((used)) static irqreturn_t FUNC2(int irq, void *dev_id)
{
	struct mlxsw_pci *mlxsw_pci = dev_id;
	struct mlxsw_pci_queue *q;
	int i;

	for (i = 0; i < MLXSW_PCI_EQS_COUNT; i++) {
		q = FUNC0(mlxsw_pci, i);
		FUNC1(q);
	}
	return IRQ_HANDLED;
}