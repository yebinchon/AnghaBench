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
typedef  int /*<<< orphan*/  u8 ;
struct sk_buff {int data; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct bnxt_napi {int /*<<< orphan*/  napi; struct bnxt* bp; } ;
struct bnxt {int /*<<< orphan*/  rx_dir; int /*<<< orphan*/  rx_copy_thresh; struct pci_dev* pdev; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int NET_IP_ALIGN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *,int) ; 
 struct sk_buff* FUNC3 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,unsigned int) ; 

__attribute__((used)) static inline struct sk_buff *FUNC5(struct bnxt_napi *bnapi, u8 *data,
					    unsigned int len,
					    dma_addr_t mapping)
{
	struct bnxt *bp = bnapi->bp;
	struct pci_dev *pdev = bp->pdev;
	struct sk_buff *skb;

	skb = FUNC3(&bnapi->napi, len);
	if (!skb)
		return NULL;

	FUNC0(&pdev->dev, mapping, bp->rx_copy_thresh,
				bp->rx_dir);

	FUNC2(skb->data - NET_IP_ALIGN, data - NET_IP_ALIGN,
	       len + NET_IP_ALIGN);

	FUNC1(&pdev->dev, mapping, bp->rx_copy_thresh,
				   bp->rx_dir);

	FUNC4(skb, len);
	return skb;
}