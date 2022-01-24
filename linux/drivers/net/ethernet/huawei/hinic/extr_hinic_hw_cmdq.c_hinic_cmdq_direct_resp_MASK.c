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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u64 ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct hinic_hwif {struct pci_dev* pdev; } ;
struct hinic_cmdqs {int /*<<< orphan*/ * cmdq; struct hinic_hwif* hwif; } ;
struct hinic_cmdq_buf {int dummy; } ;
typedef  enum hinic_mod_type { ____Placeholder_hinic_mod_type } hinic_mod_type ;

/* Variables and functions */
 size_t HINIC_CMDQ_SYNC ; 
 int FUNC0 (struct hinic_cmdq_buf*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,struct hinic_cmdq_buf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 

int FUNC3(struct hinic_cmdqs *cmdqs,
			   enum hinic_mod_type mod, u8 cmd,
			   struct hinic_cmdq_buf *buf_in, u64 *resp)
{
	struct hinic_hwif *hwif = cmdqs->hwif;
	struct pci_dev *pdev = hwif->pdev;
	int err;

	err = FUNC0(buf_in);
	if (err) {
		FUNC2(&pdev->dev, "Invalid CMDQ parameters\n");
		return err;
	}

	return FUNC1(&cmdqs->cmdq[HINIC_CMDQ_SYNC],
					 mod, cmd, buf_in, resp);
}