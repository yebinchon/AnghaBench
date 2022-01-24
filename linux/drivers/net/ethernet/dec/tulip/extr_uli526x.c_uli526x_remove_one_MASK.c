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
struct uli526x_board_info {int /*<<< orphan*/  buf_pool_dma_ptr; int /*<<< orphan*/  buf_pool_ptr; int /*<<< orphan*/  pdev; int /*<<< orphan*/  desc_pool_dma_ptr; int /*<<< orphan*/  desc_pool_ptr; int /*<<< orphan*/  ioaddr; } ;
struct tx_desc {int dummy; } ;
struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int DESC_ALL_CNT ; 
 int TX_BUF_ALLOC ; 
 int TX_DESC_CNT ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 struct uli526x_board_info* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct net_device* FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 

__attribute__((used)) static void FUNC8(struct pci_dev *pdev)
{
	struct net_device *dev = FUNC4(pdev);
	struct uli526x_board_info *db = FUNC1(dev);

	FUNC7(dev);
	FUNC5(pdev, db->ioaddr);
	FUNC3(db->pdev, sizeof(struct tx_desc) *
				DESC_ALL_CNT + 0x20, db->desc_pool_ptr,
 				db->desc_pool_dma_ptr);
	FUNC3(db->pdev, TX_BUF_ALLOC * TX_DESC_CNT + 4,
				db->buf_pool_ptr, db->buf_pool_dma_ptr);
	FUNC6(pdev);
	FUNC2(pdev);
	FUNC0(dev);
}