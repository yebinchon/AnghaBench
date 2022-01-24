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
struct sk_buff {int dummy; } ;
struct sis190_private {int /*<<< orphan*/  rx_buf_sz; struct pci_dev* pci_dev; } ;
struct pci_dev {int dummy; } ;
struct RxDesc {int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_DMA_FROMDEVICE ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct RxDesc*) ; 

__attribute__((used)) static void FUNC4(struct sis190_private *tp,
			       struct sk_buff **sk_buff, struct RxDesc *desc)
{
	struct pci_dev *pdev = tp->pci_dev;

	FUNC2(pdev, FUNC1(desc->addr), tp->rx_buf_sz,
			 PCI_DMA_FROMDEVICE);
	FUNC0(*sk_buff);
	*sk_buff = NULL;
	FUNC3(desc);
}