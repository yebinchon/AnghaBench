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
struct rtsx_pcr {int remove_pci; struct rtsx_pcr* slots; int /*<<< orphan*/  id; int /*<<< orphan*/  remap_addr; TYPE_1__* pci; scalar_t__ msi_en; int /*<<< orphan*/  irq; int /*<<< orphan*/  rtsx_resv_buf_addr; int /*<<< orphan*/  rtsx_resv_buf; int /*<<< orphan*/  idle_work; int /*<<< orphan*/  carddet_work; int /*<<< orphan*/  lock; scalar_t__ bier; struct rtsx_pcr* pcr; } ;
struct pcr_handle {int remove_pci; struct pcr_handle* slots; int /*<<< orphan*/  id; int /*<<< orphan*/  remap_addr; TYPE_1__* pci; scalar_t__ msi_en; int /*<<< orphan*/  irq; int /*<<< orphan*/  rtsx_resv_buf_addr; int /*<<< orphan*/  rtsx_resv_buf; int /*<<< orphan*/  idle_work; int /*<<< orphan*/  carddet_work; int /*<<< orphan*/  lock; scalar_t__ bier; struct pcr_handle* pcr; } ;
struct pci_dev {scalar_t__ device; scalar_t__ vendor; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  RTSX_BIER ; 
 int /*<<< orphan*/  RTSX_RESV_BUF_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct rtsx_pcr*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 struct rtsx_pcr* FUNC10 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC11 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC12 (struct pci_dev*) ; 
 int /*<<< orphan*/  rtsx_pci_idr ; 
 int /*<<< orphan*/  rtsx_pci_lock ; 
 int /*<<< orphan*/  FUNC13 (struct rtsx_pcr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC18(struct pci_dev *pcidev)
{
	struct pcr_handle *handle = FUNC10(pcidev);
	struct rtsx_pcr *pcr = handle->pcr;

	pcr->remove_pci = true;

	/* Disable interrupts at the pcr level */
	FUNC15(&pcr->lock);
	FUNC13(pcr, RTSX_BIER, 0);
	pcr->bier = 0;
	FUNC17(&pcr->lock);

	FUNC0(&pcr->carddet_work);
	FUNC0(&pcr->idle_work);

	FUNC7(&pcidev->dev);

	FUNC2(&(pcr->pci->dev), RTSX_RESV_BUF_LEN,
			pcr->rtsx_resv_buf, pcr->rtsx_resv_buf_addr);
	FUNC3(pcr->irq, (void *)pcr);
	if (pcr->msi_en)
		FUNC9(pcr->pci);
	FUNC5(pcr->remap_addr);

	FUNC12(pcidev);
	FUNC8(pcidev);

	FUNC14(&rtsx_pci_lock);
	FUNC4(&rtsx_pci_idr, pcr->id);
	FUNC16(&rtsx_pci_lock);

	FUNC6(pcr->slots);
	FUNC6(pcr);
	FUNC6(handle);

	FUNC1(&(pcidev->dev),
		": Realtek PCI-E Card Reader at %s [%04x:%04x] has been removed\n",
		FUNC11(pcidev), (int)pcidev->vendor, (int)pcidev->device);
}