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
typedef  int u32 ;
struct skge_element {int dummy; } ;
struct pci_dev {int dummy; } ;

/* Variables and functions */
 int BMU_STF ; 
 int /*<<< orphan*/  PCI_DMA_TODEVICE ; 
 int /*<<< orphan*/  FUNC0 (struct skge_element*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct skge_element*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mapaddr ; 
 int /*<<< orphan*/  maplen ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC4(struct pci_dev *pdev, struct skge_element *e,
				 u32 control)
{
	/* skb header vs. fragment */
	if (control & BMU_STF)
		FUNC3(pdev, FUNC0(e, mapaddr),
				 FUNC1(e, maplen),
				 PCI_DMA_TODEVICE);
	else
		FUNC2(pdev, FUNC0(e, mapaddr),
			       FUNC1(e, maplen),
			       PCI_DMA_TODEVICE);
}