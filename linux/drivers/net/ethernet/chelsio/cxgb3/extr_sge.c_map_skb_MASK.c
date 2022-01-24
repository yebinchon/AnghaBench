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
struct skb_shared_info {size_t nr_frags; int /*<<< orphan*/ * frags; } ;
struct sk_buff {int /*<<< orphan*/  data; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  skb_frag_t ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  PCI_DMA_TODEVICE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC6 (struct sk_buff const*) ; 
 struct skb_shared_info* FUNC7 (struct sk_buff const*) ; 

__attribute__((used)) static int FUNC8(struct pci_dev *pdev, const struct sk_buff *skb,
		   dma_addr_t *addr)
{
	const skb_frag_t *fp, *end;
	const struct skb_shared_info *si;

	if (FUNC6(skb)) {
		*addr = FUNC2(pdev, skb->data, FUNC6(skb),
				       PCI_DMA_TODEVICE);
		if (FUNC1(pdev, *addr))
			goto out_err;
		addr++;
	}

	si = FUNC7(skb);
	end = &si->frags[si->nr_frags];

	for (fp = si->frags; fp < end; fp++) {
		*addr = FUNC4(&pdev->dev, fp, 0, FUNC5(fp),
					 DMA_TO_DEVICE);
		if (FUNC1(pdev, *addr))
			goto unwind;
		addr++;
	}
	return 0;

unwind:
	while (fp-- > si->frags)
		FUNC0(&pdev->dev, *--addr, FUNC5(fp),
			       DMA_TO_DEVICE);

	FUNC3(pdev, addr[-1], FUNC6(skb), PCI_DMA_TODEVICE);
out_err:
	return -ENOMEM;
}