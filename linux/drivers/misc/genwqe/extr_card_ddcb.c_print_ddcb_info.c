
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct genwqe_dev {int print_lock; int card_idx; struct pci_dev* pci_dev; } ;
struct ddcb_queue {int ddcb_act; int ddcb_max; struct ddcb* ddcb_vaddr; int ddcb_next; } ;
struct ddcb {int cmd; int priv_64; int shi; int hsi; int seqnum_16; int retc_16; } ;


 int be16_to_cpu (int ) ;
 int be64_to_cpu (int ) ;
 int dev_err (int *,char*,char,int,int ,int ,int ,int ,int ,int ) ;
 int dev_info (int *,char*,int ,int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void print_ddcb_info(struct genwqe_dev *cd, struct ddcb_queue *queue)
{
 int i;
 struct ddcb *pddcb;
 unsigned long flags;
 struct pci_dev *pci_dev = cd->pci_dev;

 spin_lock_irqsave(&cd->print_lock, flags);

 dev_info(&pci_dev->dev,
   "DDCB list for card #%d (ddcb_act=%d / ddcb_next=%d):\n",
   cd->card_idx, queue->ddcb_act, queue->ddcb_next);

 pddcb = queue->ddcb_vaddr;
 for (i = 0; i < queue->ddcb_max; i++) {
  dev_err(&pci_dev->dev,
   "  %c %-3d: RETC=%03x SEQ=%04x HSI=%02X SHI=%02x PRIV=%06llx CMD=%03x\n",
   i == queue->ddcb_act ? '>' : ' ',
   i,
   be16_to_cpu(pddcb->retc_16),
   be16_to_cpu(pddcb->seqnum_16),
   pddcb->hsi,
   pddcb->shi,
   be64_to_cpu(pddcb->priv_64),
   pddcb->cmd);
  pddcb++;
 }
 spin_unlock_irqrestore(&cd->print_lock, flags);
}
