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
struct rocker_tlv {int dummy; } ;
struct rocker {struct pci_dev* pdev; } ;
struct pci_dev {int dummy; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_DMA_FROMDEVICE ; 
 size_t ROCKER_TLV_RX_FRAG_ADDR ; 
 size_t ROCKER_TLV_RX_FRAG_MAX_LEN ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 
 size_t FUNC1 (struct rocker_tlv const*) ; 
 int /*<<< orphan*/  FUNC2 (struct rocker_tlv const*) ; 

__attribute__((used)) static void FUNC3(const struct rocker *rocker,
					 const struct rocker_tlv **attrs)
{
	struct pci_dev *pdev = rocker->pdev;
	dma_addr_t dma_handle;
	size_t len;

	if (!attrs[ROCKER_TLV_RX_FRAG_ADDR] ||
	    !attrs[ROCKER_TLV_RX_FRAG_MAX_LEN])
		return;
	dma_handle = FUNC2(attrs[ROCKER_TLV_RX_FRAG_ADDR]);
	len = FUNC1(attrs[ROCKER_TLV_RX_FRAG_MAX_LEN]);
	FUNC0(pdev, dma_handle, len, PCI_DMA_FROMDEVICE);
}