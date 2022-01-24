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
struct sk_buff {int dummy; } ;
struct pci_dev {int dummy; } ;
struct pasemi_mac {struct pci_dev* dma_pdev; } ;
typedef  int /*<<< orphan*/  skb_frag_t ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_2__ {int /*<<< orphan*/ * frags; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_DMA_TODEVICE ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int /*<<< orphan*/  const,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int /*<<< orphan*/  const,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 TYPE_1__* FUNC5 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC6(struct pasemi_mac *mac,
				    const int nfrags,
				    struct sk_buff *skb,
				    const dma_addr_t *dmas)
{
	int f;
	struct pci_dev *pdev = mac->dma_pdev;

	FUNC2(pdev, dmas[0], FUNC4(skb), PCI_DMA_TODEVICE);

	for (f = 0; f < nfrags; f++) {
		const skb_frag_t *frag = &FUNC5(skb)->frags[f];

		FUNC1(pdev, dmas[f+1], FUNC3(frag), PCI_DMA_TODEVICE);
	}
	FUNC0(skb);

	/* Freed descriptor slot + main SKB ptr + nfrags additional ptrs,
	 * aligned up to a power of 2
	 */
	return (nfrags + 3) & ~1;
}