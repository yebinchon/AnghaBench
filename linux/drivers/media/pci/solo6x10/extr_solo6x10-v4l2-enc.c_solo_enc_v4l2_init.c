
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int vop_header ;
struct solo_dev {int vh_size; int nr_chans; scalar_t__ type; int enc_bw_remain; int fps; TYPE_2__** v4l2_enc; TYPE_4__* pdev; int * vh_buf; int vh_dma; int ring_thread_wait; } ;
struct TYPE_10__ {int dev; } ;
struct TYPE_9__ {TYPE_1__* vfd; } ;
struct TYPE_8__ {int num; } ;


 int ENOMEM ;
 scalar_t__ IS_ERR (TYPE_2__*) ;
 int PTR_ERR (TYPE_2__*) ;
 scalar_t__ SOLO_DEV_6010 ;
 int dev_info (int *,char*,int ,int ) ;
 int init_waitqueue_head (int *) ;
 int * pci_alloc_consistent (TYPE_4__*,int,int *) ;
 int pci_free_consistent (TYPE_4__*,int,int *,int ) ;
 TYPE_2__* solo_enc_alloc (struct solo_dev*,int,unsigned int) ;
 int solo_enc_free (TYPE_2__*) ;
 int solo_ring_start (struct solo_dev*) ;

int solo_enc_v4l2_init(struct solo_dev *solo_dev, unsigned nr)
{
 int i;

 init_waitqueue_head(&solo_dev->ring_thread_wait);

 solo_dev->vh_size = sizeof(vop_header);
 solo_dev->vh_buf = pci_alloc_consistent(solo_dev->pdev,
      solo_dev->vh_size,
      &solo_dev->vh_dma);
 if (solo_dev->vh_buf == ((void*)0))
  return -ENOMEM;

 for (i = 0; i < solo_dev->nr_chans; i++) {
  solo_dev->v4l2_enc[i] = solo_enc_alloc(solo_dev, i, nr);
  if (IS_ERR(solo_dev->v4l2_enc[i]))
   break;
 }

 if (i != solo_dev->nr_chans) {
  int ret = PTR_ERR(solo_dev->v4l2_enc[i]);

  while (i--)
   solo_enc_free(solo_dev->v4l2_enc[i]);
  pci_free_consistent(solo_dev->pdev, solo_dev->vh_size,
        solo_dev->vh_buf, solo_dev->vh_dma);
  solo_dev->vh_buf = ((void*)0);
  return ret;
 }

 if (solo_dev->type == SOLO_DEV_6010)
  solo_dev->enc_bw_remain = solo_dev->fps * 4 * 4;
 else
  solo_dev->enc_bw_remain = solo_dev->fps * 4 * 5;

 dev_info(&solo_dev->pdev->dev, "Encoders as /dev/video%d-%d\n",
   solo_dev->v4l2_enc[0]->vfd->num,
   solo_dev->v4l2_enc[solo_dev->nr_chans - 1]->vfd->num);

 return solo_ring_start(solo_dev);
}
