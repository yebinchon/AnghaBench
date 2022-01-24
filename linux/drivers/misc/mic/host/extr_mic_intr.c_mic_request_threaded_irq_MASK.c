#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u16 ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct msix_entry {size_t vector; size_t entry; } ;
struct mic_irq {int dummy; } ;
struct mic_intr_cb {size_t cb_id; } ;
struct TYPE_3__ {int num_vectors; int* mic_msi_map; } ;
struct mic_device {struct pci_dev* pdev; TYPE_2__* intr_ops; TYPE_1__ irq_info; } ;
typedef  int /*<<< orphan*/  irq_handler_t ;
typedef  enum mic_intr_type { ____Placeholder_mic_intr_type } mic_intr_type ;
struct TYPE_4__ {int /*<<< orphan*/  (* program_msi_to_src_map ) (struct mic_device*,size_t,size_t,int) ;} ;

/* Variables and functions */
 int FUNC0 (size_t) ; 
 int EINVAL ; 
 int ENOSPC ; 
 struct mic_irq* FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct mic_intr_cb*) ; 
 size_t MIC_NUM_OFFSETS ; 
 unsigned long FUNC3 (size_t,size_t) ; 
 int FUNC4 (struct mic_intr_cb*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,size_t,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,...) ; 
 struct msix_entry* FUNC7 (struct mic_device*) ; 
 size_t FUNC8 (struct mic_device*,int,int) ; 
 struct mic_intr_cb* FUNC9 (struct mic_device*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 scalar_t__ FUNC10 (struct pci_dev*) ; 
 int FUNC11 (size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,void*) ; 
 int /*<<< orphan*/  FUNC12 (struct mic_device*,size_t,size_t,int) ; 
 int /*<<< orphan*/  FUNC13 (struct mic_device*,size_t,size_t,int) ; 

struct mic_irq *
FUNC14(struct mic_device *mdev,
			 irq_handler_t handler, irq_handler_t thread_fn,
			 const char *name, void *data, int intr_src,
			 enum mic_intr_type type)
{
	u16 offset;
	int rc = 0;
	struct msix_entry *msix = NULL;
	unsigned long cookie = 0;
	u16 entry;
	struct mic_intr_cb *intr_cb;
	struct pci_dev *pdev = mdev->pdev;

	offset = FUNC8(mdev, intr_src, type);
	if (offset >= MIC_NUM_OFFSETS) {
		FUNC6(&mdev->pdev->dev,
			"Error mapping index %d to a valid source id.\n",
			intr_src);
		rc = -EINVAL;
		goto err;
	}

	if (mdev->irq_info.num_vectors > 1) {
		msix = FUNC7(mdev);
		if (!msix) {
			FUNC6(&mdev->pdev->dev,
				"No MSIx vectors available for use.\n");
			rc = -ENOSPC;
			goto err;
		}

		rc = FUNC11(msix->vector, handler, thread_fn,
					  0, name, data);
		if (rc) {
			FUNC5(&mdev->pdev->dev,
				"request irq failed rc = %d\n", rc);
			goto err;
		}
		entry = msix->entry;
		mdev->irq_info.mic_msi_map[entry] |= FUNC0(offset);
		mdev->intr_ops->program_msi_to_src_map(mdev,
				entry, offset, true);
		cookie = FUNC3(entry, offset);
		FUNC5(&mdev->pdev->dev, "irq: %d assigned for src: %d\n",
			msix->vector, intr_src);
	} else {
		intr_cb = FUNC9(mdev, offset, handler,
						     thread_fn, data);
		if (FUNC2(intr_cb)) {
			FUNC6(&mdev->pdev->dev,
				"No available callback entries for use\n");
			rc = FUNC4(intr_cb);
			goto err;
		}

		entry = 0;
		if (FUNC10(pdev)) {
			mdev->irq_info.mic_msi_map[entry] |= (1 << offset);
			mdev->intr_ops->program_msi_to_src_map(mdev,
				entry, offset, true);
		}
		cookie = FUNC3(entry, intr_cb->cb_id);
		FUNC5(&mdev->pdev->dev, "callback %d registered for src: %d\n",
			intr_cb->cb_id, intr_src);
	}
	return (struct mic_irq *)cookie;
err:
	return FUNC1(rc);
}