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
typedef  int /*<<< orphan*/  u32 ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct msix_entry {int dummy; } ;
struct hinic_hwif {struct pci_dev* pdev; } ;
struct hinic_ceqs {int num_ceqs; int /*<<< orphan*/ * ceq; struct hinic_hwif* hwif; } ;

/* Variables and functions */
 int /*<<< orphan*/  HINIC_CEQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct hinic_hwif*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct msix_entry) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(struct hinic_ceqs *ceqs, struct hinic_hwif *hwif,
		    int num_ceqs, u32 q_len, u32 page_size,
		    struct msix_entry *msix_entries)
{
	struct pci_dev *pdev = hwif->pdev;
	int i, q_id, err;

	ceqs->hwif = hwif;
	ceqs->num_ceqs = num_ceqs;

	for (q_id = 0; q_id < num_ceqs; q_id++) {
		err = FUNC1(&ceqs->ceq[q_id], hwif, HINIC_CEQ, q_id, q_len,
			      page_size, msix_entries[q_id]);
		if (err) {
			FUNC0(&pdev->dev, "Failed to init ceq %d\n", q_id);
			goto err_init_ceq;
		}
	}

	return 0;

err_init_ceq:
	for (i = 0; i < q_id; i++)
		FUNC2(&ceqs->ceq[i]);

	return err;
}