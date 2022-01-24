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
struct rocker_port {int /*<<< orphan*/  dev; struct rocker* rocker; } ;
struct rocker_desc_info {int dummy; } ;
struct rocker {struct pci_dev* pdev; } ;
struct pci_dev {int dummy; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int EIO ; 
 int EMSGSIZE ; 
 int /*<<< orphan*/  ROCKER_TLV_TX_FRAG ; 
 int /*<<< orphan*/  ROCKER_TLV_TX_FRAG_ATTR_ADDR ; 
 int /*<<< orphan*/  ROCKER_TLV_TX_FRAG_ATTR_LEN ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,char*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct rocker_desc_info*,struct rocker_tlv*) ; 
 int /*<<< orphan*/  FUNC6 (struct rocker_desc_info*,struct rocker_tlv*) ; 
 struct rocker_tlv* FUNC7 (struct rocker_desc_info*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct rocker_desc_info*,int /*<<< orphan*/ ,size_t) ; 
 scalar_t__ FUNC9 (struct rocker_desc_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(const struct rocker_port *rocker_port,
				       struct rocker_desc_info *desc_info,
				       char *buf, size_t buf_len)
{
	const struct rocker *rocker = rocker_port->rocker;
	struct pci_dev *pdev = rocker->pdev;
	dma_addr_t dma_handle;
	struct rocker_tlv *frag;

	dma_handle = FUNC3(pdev, buf, buf_len, DMA_TO_DEVICE);
	if (FUNC10(FUNC2(pdev, dma_handle))) {
		if (FUNC0())
			FUNC1(rocker_port->dev, "failed to dma map tx frag\n");
		return -EIO;
	}
	frag = FUNC7(desc_info, ROCKER_TLV_TX_FRAG);
	if (!frag)
		goto unmap_frag;
	if (FUNC9(desc_info, ROCKER_TLV_TX_FRAG_ATTR_ADDR,
			       dma_handle))
		goto nest_cancel;
	if (FUNC8(desc_info, ROCKER_TLV_TX_FRAG_ATTR_LEN,
			       buf_len))
		goto nest_cancel;
	FUNC6(desc_info, frag);
	return 0;

nest_cancel:
	FUNC5(desc_info, frag);
unmap_frag:
	FUNC4(pdev, dma_handle, buf_len, DMA_TO_DEVICE);
	return -EMSGSIZE;
}