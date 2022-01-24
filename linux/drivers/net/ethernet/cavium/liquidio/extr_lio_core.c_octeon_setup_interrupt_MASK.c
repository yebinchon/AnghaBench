#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_6__ {int pf_srn; int trs; } ;
struct octeon_device {int num_msix_irqs; char* irq_name_storage; char* msix_entries; int octeon_id; int pf_num; int vf_num; int flags; TYPE_2__* pci_dev; int /*<<< orphan*/  affinity_mask; struct octeon_device* ioq_vector; int /*<<< orphan*/  vector; TYPE_1__ sriov_info; scalar_t__ msix_on; } ;
struct msix_entry {int entry; int /*<<< orphan*/  vector; } ;
struct TYPE_7__ {int /*<<< orphan*/  dev; int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int INTRNAMSIZ ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 size_t FUNC0 (int) ; 
 int LIO_FLAG_MSI_ENABLED ; 
 int MAX_IOQ_INTERRUPTS_PER_PF ; 
 int MAX_IOQ_INTERRUPTS_PER_VF ; 
 scalar_t__ FUNC1 (struct octeon_device*) ; 
 scalar_t__ FUNC2 (struct octeon_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct octeon_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void* FUNC8 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  liquidio_legacy_intr_handler ; 
 int /*<<< orphan*/  liquidio_msix_intr_handler ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 int FUNC12 (TYPE_2__*) ; 
 int FUNC13 (TYPE_2__*,struct msix_entry*,int,int) ; 
 int FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct octeon_device*) ; 
 int /*<<< orphan*/  FUNC15 (char*,int,char*,int,int,...) ; 

int FUNC16(struct octeon_device *oct, u32 num_ioqs)
{
	struct msix_entry *msix_entries;
	char *queue_irq_names = NULL;
	int i, num_interrupts = 0;
	int num_alloc_ioq_vectors;
	char *aux_irq_name = NULL;
	int num_ioq_vectors;
	int irqret, err;

	if (oct->msix_on) {
		oct->num_msix_irqs = num_ioqs;
		if (FUNC1(oct)) {
			num_interrupts = MAX_IOQ_INTERRUPTS_PER_PF + 1;

			/* one non ioq interrupt for handling
			 * sli_mac_pf_int_sum
			 */
			oct->num_msix_irqs += 1;
		} else if (FUNC2(oct)) {
			num_interrupts = MAX_IOQ_INTERRUPTS_PER_VF;
		}

		/* allocate storage for the names assigned to each irq */
		oct->irq_name_storage =
			FUNC8(num_interrupts, INTRNAMSIZ, GFP_KERNEL);
		if (!oct->irq_name_storage) {
			FUNC4(&oct->pci_dev->dev, "Irq name storage alloc failed...\n");
			return -ENOMEM;
		}

		queue_irq_names = oct->irq_name_storage;

		if (FUNC1(oct))
			aux_irq_name = &queue_irq_names
				[FUNC0(MAX_IOQ_INTERRUPTS_PER_PF)];

		oct->msix_entries = FUNC8(oct->num_msix_irqs,
					    sizeof(struct msix_entry),
					    GFP_KERNEL);
		if (!oct->msix_entries) {
			FUNC4(&oct->pci_dev->dev, "Memory Alloc failed...\n");
			FUNC9(oct->irq_name_storage);
			oct->irq_name_storage = NULL;
			return -ENOMEM;
		}

		msix_entries = (struct msix_entry *)oct->msix_entries;

		/*Assumption is that pf msix vectors start from pf srn to pf to
		 * trs and not from 0. if not change this code
		 */
		if (FUNC1(oct)) {
			for (i = 0; i < oct->num_msix_irqs - 1; i++)
				msix_entries[i].entry =
					oct->sriov_info.pf_srn + i;

			msix_entries[oct->num_msix_irqs - 1].entry =
				oct->sriov_info.trs;
		} else if (FUNC2(oct)) {
			for (i = 0; i < oct->num_msix_irqs; i++)
				msix_entries[i].entry = i;
		}
		num_alloc_ioq_vectors = FUNC13(
						oct->pci_dev, msix_entries,
						oct->num_msix_irqs,
						oct->num_msix_irqs);
		if (num_alloc_ioq_vectors < 0) {
			FUNC4(&oct->pci_dev->dev, "unable to Allocate MSI-X interrupts\n");
			FUNC9(oct->msix_entries);
			oct->msix_entries = NULL;
			FUNC9(oct->irq_name_storage);
			oct->irq_name_storage = NULL;
			return num_alloc_ioq_vectors;
		}

		FUNC3(&oct->pci_dev->dev, "OCTEON: Enough MSI-X interrupts are allocated...\n");

		num_ioq_vectors = oct->num_msix_irqs;
		/** For PF, there is one non-ioq interrupt handler */
		if (FUNC1(oct)) {
			num_ioq_vectors -= 1;

			FUNC15(aux_irq_name, INTRNAMSIZ,
				 "LiquidIO%u-pf%u-aux", oct->octeon_id,
				 oct->pf_num);
			irqret = FUNC14(
					msix_entries[num_ioq_vectors].vector,
					liquidio_legacy_intr_handler, 0,
					aux_irq_name, oct);
			if (irqret) {
				FUNC4(&oct->pci_dev->dev,
					"Request_irq failed for MSIX interrupt Error: %d\n",
					irqret);
				FUNC11(oct->pci_dev);
				FUNC9(oct->msix_entries);
				FUNC9(oct->irq_name_storage);
				oct->irq_name_storage = NULL;
				oct->msix_entries = NULL;
				return irqret;
			}
		}
		for (i = 0 ; i < num_ioq_vectors ; i++) {
			if (FUNC1(oct))
				FUNC15(&queue_irq_names[FUNC0(i)],
					 INTRNAMSIZ, "LiquidIO%u-pf%u-rxtx-%u",
					 oct->octeon_id, oct->pf_num, i);

			if (FUNC2(oct))
				FUNC15(&queue_irq_names[FUNC0(i)],
					 INTRNAMSIZ, "LiquidIO%u-vf%u-rxtx-%u",
					 oct->octeon_id, oct->vf_num, i);

			irqret = FUNC14(msix_entries[i].vector,
					     liquidio_msix_intr_handler, 0,
					     &queue_irq_names[FUNC0(i)],
					     &oct->ioq_vector[i]);

			if (irqret) {
				FUNC4(&oct->pci_dev->dev,
					"Request_irq failed for MSIX interrupt Error: %d\n",
					irqret);
				/** Freeing the non-ioq irq vector here . */
				FUNC6(msix_entries[num_ioq_vectors].vector,
					 oct);

				while (i) {
					i--;
					/** clearing affinity mask. */
					FUNC7(
						      msix_entries[i].vector,
						      NULL);
					FUNC6(msix_entries[i].vector,
						 &oct->ioq_vector[i]);
				}
				FUNC11(oct->pci_dev);
				FUNC9(oct->msix_entries);
				FUNC9(oct->irq_name_storage);
				oct->irq_name_storage = NULL;
				oct->msix_entries = NULL;
				return irqret;
			}
			oct->ioq_vector[i].vector = msix_entries[i].vector;
			/* assign the cpu mask for this msix interrupt vector */
			FUNC7(msix_entries[i].vector,
					      &oct->ioq_vector[i].affinity_mask
					      );
		}
		FUNC3(&oct->pci_dev->dev, "OCTEON[%d]: MSI-X enabled\n",
			oct->octeon_id);
	} else {
		err = FUNC12(oct->pci_dev);
		if (err)
			FUNC5(&oct->pci_dev->dev, "Reverting to legacy interrupts. Error: %d\n",
				 err);
		else
			oct->flags |= LIO_FLAG_MSI_ENABLED;

		/* allocate storage for the names assigned to the irq */
		oct->irq_name_storage = FUNC8(1, INTRNAMSIZ, GFP_KERNEL);
		if (!oct->irq_name_storage)
			return -ENOMEM;

		queue_irq_names = oct->irq_name_storage;

		if (FUNC1(oct))
			FUNC15(&queue_irq_names[FUNC0(0)], INTRNAMSIZ,
				 "LiquidIO%u-pf%u-rxtx-%u",
				 oct->octeon_id, oct->pf_num, 0);

		if (FUNC2(oct))
			FUNC15(&queue_irq_names[FUNC0(0)], INTRNAMSIZ,
				 "LiquidIO%u-vf%u-rxtx-%u",
				 oct->octeon_id, oct->vf_num, 0);

		irqret = FUNC14(oct->pci_dev->irq,
				     liquidio_legacy_intr_handler,
				     IRQF_SHARED,
				     &queue_irq_names[FUNC0(0)], oct);
		if (irqret) {
			if (oct->flags & LIO_FLAG_MSI_ENABLED)
				FUNC10(oct->pci_dev);
			FUNC4(&oct->pci_dev->dev, "Request IRQ failed with code: %d\n",
				irqret);
			FUNC9(oct->irq_name_storage);
			oct->irq_name_storage = NULL;
			return irqret;
		}
	}
	return 0;
}