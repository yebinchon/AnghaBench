
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct solo_p2m_desc {int dummy; } ;
struct solo_enc_dev {int desc_nelts; int hdl; int vfd; int desc_dma; int desc_items; TYPE_1__* solo_dev; } ;
struct TYPE_2__ {int pdev; } ;


 int kfree (struct solo_enc_dev*) ;
 int pci_free_consistent (int ,int,int ,int ) ;
 int v4l2_ctrl_handler_free (int *) ;
 int video_unregister_device (int ) ;

__attribute__((used)) static void solo_enc_free(struct solo_enc_dev *solo_enc)
{
 if (solo_enc == ((void*)0))
  return;

 pci_free_consistent(solo_enc->solo_dev->pdev,
   sizeof(struct solo_p2m_desc) * solo_enc->desc_nelts,
   solo_enc->desc_items, solo_enc->desc_dma);
 video_unregister_device(solo_enc->vfd);
 v4l2_ctrl_handler_free(&solo_enc->hdl);
 kfree(solo_enc);
}
