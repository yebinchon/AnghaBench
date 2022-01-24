#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct rtsx_pcr {int id; int rtsx_resv_buf_addr; int host_cmds_addr; int host_sg_tbl_addr; int msi_en; int /*<<< orphan*/  remap_addr; int /*<<< orphan*/ * rtsx_resv_buf; struct pci_dev* pci; int /*<<< orphan*/  irq; int /*<<< orphan*/  idle_work; int /*<<< orphan*/  carddet_work; scalar_t__ card_removed; scalar_t__ card_inserted; int /*<<< orphan*/ * host_sg_tbl_ptr; int /*<<< orphan*/ * host_cmds_ptr; struct rtsx_pcr* pcr; } ;
struct pcr_handle {int id; int rtsx_resv_buf_addr; int host_cmds_addr; int host_sg_tbl_addr; int msi_en; int /*<<< orphan*/  remap_addr; int /*<<< orphan*/ * rtsx_resv_buf; struct pci_dev* pci; int /*<<< orphan*/  irq; int /*<<< orphan*/  idle_work; int /*<<< orphan*/  carddet_work; scalar_t__ card_removed; scalar_t__ card_inserted; int /*<<< orphan*/ * host_sg_tbl_ptr; int /*<<< orphan*/ * host_cmds_ptr; struct pcr_handle* pcr; } ;
struct pci_device_id {int dummy; } ;
struct pci_dev {int /*<<< orphan*/  dev; scalar_t__ revision; scalar_t__ device; scalar_t__ vendor; } ;
struct TYPE_4__ {int pdata_size; struct rtsx_pcr* platform_data; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (struct rtsx_pcr*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  DRV_NAME_RTSX_PCI ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GFP_NOWAIT ; 
 int HOST_CMDS_BUF_LEN ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RTSX_RESV_BUF_LEN ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct rtsx_pcr*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,void*) ; 
 int FUNC9 (int /*<<< orphan*/ *,struct rtsx_pcr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct rtsx_pcr*) ; 
 struct rtsx_pcr* FUNC15 (int,int /*<<< orphan*/ ) ; 
 int FUNC16 (int /*<<< orphan*/ *,int,TYPE_1__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int) ; 
 int msi_en ; 
 int /*<<< orphan*/  FUNC18 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC19 (struct pci_dev*) ; 
 int FUNC20 (struct pci_dev*) ; 
 int FUNC21 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC22 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC23 (struct pci_dev*) ; 
 int FUNC24 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC26 (struct pci_dev*,int) ; 
 int FUNC27 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (struct pci_dev*) ; 
 int FUNC29 (struct rtsx_pcr*) ; 
 int /*<<< orphan*/  rtsx_pci_card_detect ; 
 int /*<<< orphan*/  rtsx_pci_idle_work ; 
 int /*<<< orphan*/  rtsx_pci_idr ; 
 int FUNC30 (struct rtsx_pcr*) ; 
 int /*<<< orphan*/  rtsx_pci_lock ; 
 TYPE_1__* rtsx_pcr_cells ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC35(struct pci_dev *pcidev,
			  const struct pci_device_id *id)
{
	struct rtsx_pcr *pcr;
	struct pcr_handle *handle;
	u32 base, len;
	int ret, i, bar = 0;

	FUNC4(&(pcidev->dev),
		": Realtek PCI-E Card Reader found at %s [%04x:%04x] (rev %x)\n",
		FUNC22(pcidev), (int)pcidev->vendor, (int)pcidev->device,
		(int)pcidev->revision);

	ret = FUNC27(pcidev, FUNC2(32));
	if (ret < 0)
		return ret;

	ret = FUNC20(pcidev);
	if (ret)
		return ret;

	ret = FUNC24(pcidev, DRV_NAME_RTSX_PCI);
	if (ret)
		goto disable;

	pcr = FUNC15(sizeof(*pcr), GFP_KERNEL);
	if (!pcr) {
		ret = -ENOMEM;
		goto release_pci;
	}

	handle = FUNC15(sizeof(*handle), GFP_KERNEL);
	if (!handle) {
		ret = -ENOMEM;
		goto free_pcr;
	}
	handle->pcr = pcr;

	FUNC10(GFP_KERNEL);
	FUNC32(&rtsx_pci_lock);
	ret = FUNC9(&rtsx_pci_idr, pcr, 0, 0, GFP_NOWAIT);
	if (ret >= 0)
		pcr->id = ret;
	FUNC33(&rtsx_pci_lock);
	FUNC11();
	if (ret < 0)
		goto free_handle;

	pcr->pci = pcidev;
	FUNC5(&pcidev->dev, handle);

	if (FUNC1(pcr, 0x525A))
		bar = 1;
	len = FUNC25(pcidev, bar);
	base = FUNC26(pcidev, bar);
	pcr->remap_addr = FUNC12(base, len);
	if (!pcr->remap_addr) {
		ret = -ENOMEM;
		goto free_handle;
	}

	pcr->rtsx_resv_buf = FUNC6(&(pcidev->dev),
			RTSX_RESV_BUF_LEN, &(pcr->rtsx_resv_buf_addr),
			GFP_KERNEL);
	if (pcr->rtsx_resv_buf == NULL) {
		ret = -ENXIO;
		goto unmap;
	}
	pcr->host_cmds_ptr = pcr->rtsx_resv_buf;
	pcr->host_cmds_addr = pcr->rtsx_resv_buf_addr;
	pcr->host_sg_tbl_ptr = pcr->rtsx_resv_buf + HOST_CMDS_BUF_LEN;
	pcr->host_sg_tbl_addr = pcr->rtsx_resv_buf_addr + HOST_CMDS_BUF_LEN;

	pcr->card_inserted = 0;
	pcr->card_removed = 0;
	FUNC3(&pcr->carddet_work, rtsx_pci_card_detect);
	FUNC3(&pcr->idle_work, rtsx_pci_idle_work);

	pcr->msi_en = msi_en;
	if (pcr->msi_en) {
		ret = FUNC21(pcidev);
		if (ret)
			pcr->msi_en = false;
	}

	ret = FUNC29(pcr);
	if (ret < 0)
		goto disable_msi;

	FUNC28(pcidev);
	FUNC34(pcr->irq);

	ret = FUNC30(pcr);
	if (ret < 0)
		goto disable_irq;

	for (i = 0; i < FUNC0(rtsx_pcr_cells); i++) {
		rtsx_pcr_cells[i].platform_data = handle;
		rtsx_pcr_cells[i].pdata_size = sizeof(*handle);
	}
	ret = FUNC16(&pcidev->dev, pcr->id, rtsx_pcr_cells,
			FUNC0(rtsx_pcr_cells), NULL, 0, NULL);
	if (ret < 0)
		goto disable_irq;

	FUNC31(&pcr->idle_work, FUNC17(200));

	return 0;

disable_irq:
	FUNC8(pcr->irq, (void *)pcr);
disable_msi:
	if (pcr->msi_en)
		FUNC19(pcr->pci);
	FUNC7(&(pcr->pci->dev), RTSX_RESV_BUF_LEN,
			pcr->rtsx_resv_buf, pcr->rtsx_resv_buf_addr);
unmap:
	FUNC13(pcr->remap_addr);
free_handle:
	FUNC14(handle);
free_pcr:
	FUNC14(pcr);
release_pci:
	FUNC23(pcidev);
disable:
	FUNC18(pcidev);

	return ret;
}