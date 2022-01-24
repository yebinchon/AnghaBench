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
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct genwqe_dev {int /*<<< orphan*/  print_lock; int /*<<< orphan*/  card_idx; struct pci_dev* pci_dev; } ;
struct ddcb_queue {int ddcb_act; int ddcb_max; struct ddcb* ddcb_vaddr; int /*<<< orphan*/  ddcb_next; } ;
struct ddcb {int /*<<< orphan*/  cmd; int /*<<< orphan*/  priv_64; int /*<<< orphan*/  shi; int /*<<< orphan*/  hsi; int /*<<< orphan*/  seqnum_16; int /*<<< orphan*/  retc_16; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC6(struct genwqe_dev *cd, struct ddcb_queue *queue)
{
	int i;
	struct ddcb *pddcb;
	unsigned long flags;
	struct pci_dev *pci_dev = cd->pci_dev;

	FUNC4(&cd->print_lock, flags);

	FUNC3(&pci_dev->dev,
		 "DDCB list for card #%d (ddcb_act=%d / ddcb_next=%d):\n",
		 cd->card_idx, queue->ddcb_act, queue->ddcb_next);

	pddcb = queue->ddcb_vaddr;
	for (i = 0; i < queue->ddcb_max; i++) {
		FUNC2(&pci_dev->dev,
			"  %c %-3d: RETC=%03x SEQ=%04x HSI=%02X SHI=%02x PRIV=%06llx CMD=%03x\n",
			i == queue->ddcb_act ? '>' : ' ',
			i,
			FUNC0(pddcb->retc_16),
			FUNC0(pddcb->seqnum_16),
			pddcb->hsi,
			pddcb->shi,
			FUNC1(pddcb->priv_64),
			pddcb->cmd);
		pddcb++;
	}
	FUNC5(&cd->print_lock, flags);
}