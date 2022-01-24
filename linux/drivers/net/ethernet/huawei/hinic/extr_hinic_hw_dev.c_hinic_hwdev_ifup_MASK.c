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
typedef  int /*<<< orphan*/  u16 ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct msix_entry {int dummy; } ;
struct hinic_hwif {struct pci_dev* pdev; } ;
struct hinic_cap {int num_qps; int /*<<< orphan*/  max_qps; } ;
struct hinic_func_to_io {int dummy; } ;
struct hinic_hwdev {struct msix_entry* msix_entries; struct hinic_hwif* hwif; struct hinic_cap nic_cap; struct hinic_func_to_io func_to_io; } ;

/* Variables and functions */
 int /*<<< orphan*/  HINIC_DB_ENABLE ; 
 int FUNC0 (struct hinic_hwif*) ; 
 int FUNC1 (struct hinic_hwif*) ; 
 int /*<<< orphan*/  HINIC_RQ_DEPTH ; 
 int /*<<< orphan*/  HINIC_SQ_DEPTH ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int FUNC4 (struct hinic_hwdev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct hinic_hwif*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct hinic_func_to_io*,int /*<<< orphan*/ ,int,struct msix_entry*,struct msix_entry*) ; 
 int /*<<< orphan*/  FUNC7 (struct hinic_func_to_io*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct hinic_func_to_io*) ; 
 int FUNC9 (struct hinic_func_to_io*,struct hinic_hwif*,int /*<<< orphan*/ ,int,struct msix_entry*) ; 
 int FUNC10 (struct hinic_hwdev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct hinic_hwdev*) ; 

int FUNC12(struct hinic_hwdev *hwdev)
{
	struct hinic_func_to_io *func_to_io = &hwdev->func_to_io;
	struct hinic_cap *nic_cap = &hwdev->nic_cap;
	struct hinic_hwif *hwif = hwdev->hwif;
	int err, num_aeqs, num_ceqs, num_qps;
	struct msix_entry *ceq_msix_entries;
	struct msix_entry *sq_msix_entries;
	struct msix_entry *rq_msix_entries;
	struct pci_dev *pdev = hwif->pdev;
	u16 base_qpn;

	err = FUNC4(hwdev, &base_qpn);
	if (err) {
		FUNC2(&pdev->dev, "Failed to get global base qp number\n");
		return err;
	}

	num_aeqs = FUNC0(hwif);
	num_ceqs = FUNC1(hwif);

	ceq_msix_entries = &hwdev->msix_entries[num_aeqs];

	err = FUNC9(func_to_io, hwif, nic_cap->max_qps, num_ceqs,
			    ceq_msix_entries);
	if (err) {
		FUNC2(&pdev->dev, "Failed to init IO channel\n");
		return err;
	}

	num_qps = nic_cap->num_qps;
	sq_msix_entries = &hwdev->msix_entries[num_aeqs + num_ceqs];
	rq_msix_entries = &hwdev->msix_entries[num_aeqs + num_ceqs + num_qps];

	err = FUNC6(func_to_io, base_qpn, num_qps,
				  sq_msix_entries, rq_msix_entries);
	if (err) {
		FUNC2(&pdev->dev, "Failed to create QPs\n");
		goto err_create_qps;
	}

	err = FUNC11(hwdev);
	if (err) {
		FUNC3(&pdev->dev, "db - disabled, try again\n");
		FUNC5(hwif, HINIC_DB_ENABLE);
	}

	err = FUNC10(hwdev, HINIC_SQ_DEPTH, HINIC_RQ_DEPTH);
	if (err) {
		FUNC2(&pdev->dev, "Failed to set HW IO ctxt\n");
		goto err_hw_ioctxt;
	}

	return 0;

err_hw_ioctxt:
	FUNC7(func_to_io, num_qps);

err_create_qps:
	FUNC8(func_to_io);
	return err;
}