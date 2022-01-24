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
struct vmci_guest_device {int /*<<< orphan*/  data_buffer; int /*<<< orphan*/  notification_base; scalar_t__ notification_bitmap; int /*<<< orphan*/  bm_tasklet; int /*<<< orphan*/  datagram_tasklet; scalar_t__ exclusive_vectors; scalar_t__ iobase; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 scalar_t__ VMCI_CONTROL_ADDR ; 
 int /*<<< orphan*/  VMCI_CONTROL_RESET ; 
 int /*<<< orphan*/  VMCI_EVENT_CTX_ID_UPDATE ; 
 int VMCI_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ctx_update_sub_id ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct vmci_guest_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*) ; 
 struct vmci_guest_device* FUNC7 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * vmci_dev_g ; 
 int /*<<< orphan*/  vmci_dev_spinlock ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vmci_num_guest_devices ; 
 int /*<<< orphan*/ * vmci_pdev ; 
 int /*<<< orphan*/  FUNC14 () ; 

__attribute__((used)) static void FUNC15(struct pci_dev *pdev)
{
	struct vmci_guest_device *vmci_dev = FUNC7(pdev);
	int vmci_err;

	FUNC1(&pdev->dev, "Removing device\n");

	FUNC0(&vmci_num_guest_devices);

	FUNC14();

	vmci_err = FUNC13(ctx_update_sub_id);
	if (vmci_err < VMCI_SUCCESS)
		FUNC2(&pdev->dev,
			 "Failed to unsubscribe from event (type=%d) with subscriber (ID=0x%x): %d\n",
			 VMCI_EVENT_CTX_ID_UPDATE, ctx_update_sub_id, vmci_err);

	FUNC9(&vmci_dev_spinlock);
	vmci_dev_g = NULL;
	vmci_pdev = NULL;
	FUNC10(&vmci_dev_spinlock);

	FUNC1(&pdev->dev, "Resetting vmci device\n");
	FUNC5(VMCI_CONTROL_RESET, vmci_dev->iobase + VMCI_CONTROL_ADDR);

	/*
	 * Free IRQ and then disable MSI/MSI-X as appropriate.  For
	 * MSI-X, we might have multiple vectors, each with their own
	 * IRQ, which we must free too.
	 */
	if (vmci_dev->exclusive_vectors)
		FUNC4(FUNC8(pdev, 1), vmci_dev);
	FUNC4(FUNC8(pdev, 0), vmci_dev);
	FUNC6(pdev);

	FUNC11(&vmci_dev->datagram_tasklet);
	FUNC11(&vmci_dev->bm_tasklet);

	if (vmci_dev->notification_bitmap) {
		/*
		 * The device reset above cleared the bitmap state of the
		 * device, so we can safely free it here.
		 */

		FUNC3(&pdev->dev, PAGE_SIZE,
				  vmci_dev->notification_bitmap,
				  vmci_dev->notification_base);
	}

	FUNC12(vmci_dev->data_buffer);

	/* The rest are managed resources and will be freed by PCI core */
}