
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int pt; } ;
struct TYPE_3__ {int pt; } ;
struct saa7134_dev {int radio_ctrl_handler; int ctrl_handler; TYPE_2__ vbi_q; int pci; int vbi_vbq; TYPE_1__ video_q; int video_vbq; } ;


 scalar_t__ card_has_radio (struct saa7134_dev*) ;
 int saa7134_pgtable_free (int ,int *) ;
 int v4l2_ctrl_handler_free (int *) ;
 int vb2_queue_release (int *) ;

void saa7134_video_fini(struct saa7134_dev *dev)
{

 vb2_queue_release(&dev->video_vbq);
 saa7134_pgtable_free(dev->pci, &dev->video_q.pt);
 vb2_queue_release(&dev->vbi_vbq);
 saa7134_pgtable_free(dev->pci, &dev->vbi_q.pt);
 v4l2_ctrl_handler_free(&dev->ctrl_handler);
 if (card_has_radio(dev))
  v4l2_ctrl_handler_free(&dev->radio_ctrl_handler);
}
