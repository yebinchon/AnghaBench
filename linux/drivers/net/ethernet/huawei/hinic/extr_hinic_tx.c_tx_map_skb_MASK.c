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
struct sk_buff {int /*<<< orphan*/  data; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct hinic_sge {int /*<<< orphan*/  len; } ;
struct hinic_hwif {struct pci_dev* pdev; } ;
struct hinic_hwdev {struct hinic_hwif* hwif; } ;
struct hinic_dev {struct hinic_hwdev* hwdev; } ;
typedef  int /*<<< orphan*/  skb_frag_t ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_2__ {int nr_frags; int /*<<< orphan*/ * frags; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int EFAULT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct hinic_sge*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct hinic_sge*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*) ; 
 TYPE_1__* FUNC10 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC11(struct hinic_dev *nic_dev, struct sk_buff *skb,
		      struct hinic_sge *sges)
{
	struct hinic_hwdev *hwdev = nic_dev->hwdev;
	struct hinic_hwif *hwif = hwdev->hwif;
	struct pci_dev *pdev = hwif->pdev;
	skb_frag_t *frag;
	dma_addr_t dma_addr;
	int i, j;

	dma_addr = FUNC1(&pdev->dev, skb->data, FUNC9(skb),
				  DMA_TO_DEVICE);
	if (FUNC2(&pdev->dev, dma_addr)) {
		FUNC0(&pdev->dev, "Failed to map Tx skb data\n");
		return -EFAULT;
	}

	FUNC5(&sges[0], dma_addr, FUNC9(skb));

	for (i = 0 ; i < FUNC10(skb)->nr_frags; i++) {
		frag = &FUNC10(skb)->frags[i];

		dma_addr = FUNC7(&pdev->dev, frag, 0,
					    FUNC8(frag),
					    DMA_TO_DEVICE);
		if (FUNC2(&pdev->dev, dma_addr)) {
			FUNC0(&pdev->dev, "Failed to map Tx skb frag\n");
			goto err_tx_map;
		}

		FUNC5(&sges[i + 1], dma_addr, FUNC8(frag));
	}

	return 0;

err_tx_map:
	for (j = 0; j < i; j++)
		FUNC3(&pdev->dev, FUNC6(&sges[j + 1]),
			       sges[j + 1].len, DMA_TO_DEVICE);

	FUNC4(&pdev->dev, FUNC6(&sges[0]), sges[0].len,
			 DMA_TO_DEVICE);
	return -EFAULT;
}