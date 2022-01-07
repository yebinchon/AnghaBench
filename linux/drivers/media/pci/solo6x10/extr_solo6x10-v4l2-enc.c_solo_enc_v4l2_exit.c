
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct solo_dev {int nr_chans; int vh_dma; scalar_t__ vh_buf; int vh_size; int pdev; int * v4l2_enc; } ;


 int pci_free_consistent (int ,int ,scalar_t__,int ) ;
 int solo_enc_free (int ) ;
 int solo_ring_stop (struct solo_dev*) ;

void solo_enc_v4l2_exit(struct solo_dev *solo_dev)
{
 int i;

 solo_ring_stop(solo_dev);

 for (i = 0; i < solo_dev->nr_chans; i++)
  solo_enc_free(solo_dev->v4l2_enc[i]);

 if (solo_dev->vh_buf)
  pci_free_consistent(solo_dev->pdev, solo_dev->vh_size,
       solo_dev->vh_buf, solo_dev->vh_dma);
}
