
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xircom_private {int dev; int lock; int pdev; } ;


 int NUMDESCRIPTORS ;
 int PCI_POWERMGMT ;
 int * bufferoffsets ;
 int enable_common_interrupts (struct xircom_private*) ;
 int enable_link_interrupt (struct xircom_private*) ;
 int enable_promisc (struct xircom_private*) ;
 int enable_receive_interrupt (struct xircom_private*) ;
 int enable_transmit_interrupt (struct xircom_private*) ;
 int investigate_read_descriptor (int ,struct xircom_private*,int,int ) ;
 int netif_start_queue (int ) ;
 int pci_write_config_dword (int ,int ,int) ;
 int setup_descriptors (struct xircom_private*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int trigger_receive (struct xircom_private*) ;
 int trigger_transmit (struct xircom_private*) ;

__attribute__((used)) static void xircom_up(struct xircom_private *card)
{
 unsigned long flags;
 int i;


 pci_write_config_dword(card->pdev, PCI_POWERMGMT, 0x0000);

 setup_descriptors(card);

 spin_lock_irqsave(&card->lock, flags);


 enable_link_interrupt(card);
 enable_transmit_interrupt(card);
 enable_receive_interrupt(card);
 enable_common_interrupts(card);
 enable_promisc(card);


 for (i=0;i<NUMDESCRIPTORS;i++)
  investigate_read_descriptor(card->dev,card,i,bufferoffsets[i]);


 spin_unlock_irqrestore(&card->lock, flags);
 trigger_receive(card);
 trigger_transmit(card);
 netif_start_queue(card->dev);
}
