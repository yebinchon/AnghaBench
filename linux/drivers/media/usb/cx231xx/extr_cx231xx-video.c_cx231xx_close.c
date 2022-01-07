
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct file {struct cx231xx_fh* private_data; } ;
struct cx231xx_fh {scalar_t__ type; int fh; struct cx231xx* dev; int vb_vidq; } ;
struct TYPE_2__ {int no_alt_vanc; } ;
struct cx231xx {int state; int open; scalar_t__ USE_ISO; int users; int vbi_or_sliced_cc_mode; int devlist_count; TYPE_1__ board; } ;


 int CX231XX_SUSPEND ;
 int DEV_DISCONNECTED ;
 int INDEX_HANC ;
 int INDEX_VANC ;
 int INDEX_VIDEO ;
 scalar_t__ V4L2_BUF_TYPE_VBI_CAPTURE ;
 scalar_t__ atomic_read (int *) ;
 int call_all (struct cx231xx*,int ,int ) ;
 int cx231xx_release_resources (struct cx231xx*) ;
 int cx231xx_set_alt_setting (struct cx231xx*,int ,int ) ;
 int cx231xx_set_mode (struct cx231xx*,int ) ;
 int cx231xx_uninit_bulk (struct cx231xx*) ;
 int cx231xx_uninit_isoc (struct cx231xx*) ;
 int cx231xx_uninit_vbi_isoc (struct cx231xx*) ;
 int cx231xx_videodbg (char*,int ) ;
 int kfree (struct cx231xx_fh*) ;
 scalar_t__ res_check (struct cx231xx_fh*) ;
 int res_free (struct cx231xx_fh*) ;
 int standby ;
 int tuner ;
 int v4l2_fh_del (int *) ;
 int v4l2_fh_exit (int *) ;
 int videobuf_mmap_free (int *) ;
 int videobuf_stop (int *) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static int cx231xx_close(struct file *filp)
{
 struct cx231xx_fh *fh = filp->private_data;
 struct cx231xx *dev = fh->dev;

 cx231xx_videodbg("users=%d\n", dev->users);

 cx231xx_videodbg("users=%d\n", dev->users);
 if (res_check(fh))
  res_free(fh);







 if (!dev->board.no_alt_vanc)
  if (fh->type == V4L2_BUF_TYPE_VBI_CAPTURE) {
   videobuf_stop(&fh->vb_vidq);
   videobuf_mmap_free(&fh->vb_vidq);



   if (dev->state & DEV_DISCONNECTED) {
    if (atomic_read(&dev->devlist_count) > 0) {
     cx231xx_release_resources(dev);
     fh->dev = ((void*)0);
     return 0;
    }
    return 0;
   }


   cx231xx_uninit_vbi_isoc(dev);


   if (!dev->vbi_or_sliced_cc_mode)
    cx231xx_set_alt_setting(dev, INDEX_VANC, 0);
   else
    cx231xx_set_alt_setting(dev, INDEX_HANC, 0);

   v4l2_fh_del(&fh->fh);
   v4l2_fh_exit(&fh->fh);
   kfree(fh);
   dev->users--;
   wake_up_interruptible(&dev->open);
   return 0;
  }

 v4l2_fh_del(&fh->fh);
 dev->users--;
 if (!dev->users) {
  videobuf_stop(&fh->vb_vidq);
  videobuf_mmap_free(&fh->vb_vidq);



  if (dev->state & DEV_DISCONNECTED) {
   cx231xx_release_resources(dev);
   fh->dev = ((void*)0);
   return 0;
  }


  call_all(dev, tuner, standby);


  if (dev->USE_ISO)
   cx231xx_uninit_isoc(dev);
  else
   cx231xx_uninit_bulk(dev);
  cx231xx_set_mode(dev, CX231XX_SUSPEND);


  cx231xx_set_alt_setting(dev, INDEX_VIDEO, 0);
 }
 v4l2_fh_exit(&fh->fh);
 kfree(fh);
 wake_up_interruptible(&dev->open);
 return 0;
}
