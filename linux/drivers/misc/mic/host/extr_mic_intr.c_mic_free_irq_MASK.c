#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
typedef  size_t u32 ;
struct pci_dev {unsigned int irq; int /*<<< orphan*/  dev; } ;
struct mic_irq {int dummy; } ;
struct TYPE_5__ {int num_vectors; int /*<<< orphan*/ * mic_msi_map; TYPE_1__* msix_entries; } ;
struct mic_device {struct pci_dev* pdev; TYPE_3__* intr_ops; TYPE_2__ irq_info; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* program_msi_to_src_map ) (struct mic_device*,size_t,scalar_t__,int) ;} ;
struct TYPE_4__ {unsigned int vector; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 size_t FUNC1 (unsigned long) ; 
 size_t FUNC2 (unsigned long) ; 
 scalar_t__ MIC_NUM_OFFSETS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,size_t,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int,void*) ; 
 scalar_t__ FUNC6 (struct mic_device*,size_t) ; 
 scalar_t__ FUNC7 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct mic_device*,size_t,size_t,int) ; 
 int /*<<< orphan*/  FUNC9 (struct mic_device*,size_t,scalar_t__,int) ; 

void FUNC10(struct mic_device *mdev,
		  struct mic_irq *cookie, void *data)
{
	u32 offset;
	u32 entry;
	u8 src_id;
	unsigned int irq;
	struct pci_dev *pdev = mdev->pdev;

	entry = FUNC1((unsigned long)cookie);
	offset = FUNC2((unsigned long)cookie);
	if (mdev->irq_info.num_vectors > 1) {
		if (entry >= mdev->irq_info.num_vectors) {
			FUNC4(&mdev->pdev->dev,
				 "entry %d should be < num_irq %d\n",
				entry, mdev->irq_info.num_vectors);
			return;
		}
		irq = mdev->irq_info.msix_entries[entry].vector;
		FUNC5(irq, data);
		mdev->irq_info.mic_msi_map[entry] &= ~(FUNC0(offset));
		mdev->intr_ops->program_msi_to_src_map(mdev,
			entry, offset, false);

		FUNC3(&mdev->pdev->dev, "irq: %d freed\n", irq);
	} else {
		irq = pdev->irq;
		src_id = FUNC6(mdev, offset);
		if (src_id >= MIC_NUM_OFFSETS) {
			FUNC4(&mdev->pdev->dev, "Error unregistering callback\n");
			return;
		}
		if (FUNC7(pdev)) {
			mdev->irq_info.mic_msi_map[entry] &= ~(FUNC0(src_id));
			mdev->intr_ops->program_msi_to_src_map(mdev,
				entry, src_id, false);
		}
		FUNC3(&mdev->pdev->dev, "callback %d unregistered for src: %d\n",
			offset, src_id);
	}
}