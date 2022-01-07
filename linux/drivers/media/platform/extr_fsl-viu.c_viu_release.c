
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct viu_fh {int fh; int vb_vidq; struct viu_dev* dev; } ;
struct viu_dev {int users; int lock; } ;
struct file {struct viu_fh* private_data; } ;
struct TYPE_2__ {int minor; } ;


 int dprintk (int,char*,int,int ) ;
 int kfree (struct viu_fh*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int v4l2_fh_del (int *) ;
 int v4l2_fh_exit (int *) ;
 TYPE_1__* video_devdata (struct file*) ;
 int videobuf_mmap_free (int *) ;
 int videobuf_stop (int *) ;
 int viu_stop_dma (struct viu_dev*) ;

__attribute__((used)) static int viu_release(struct file *file)
{
 struct viu_fh *fh = file->private_data;
 struct viu_dev *dev = fh->dev;
 int minor = video_devdata(file)->minor;

 mutex_lock(&dev->lock);
 viu_stop_dma(dev);
 videobuf_stop(&fh->vb_vidq);
 videobuf_mmap_free(&fh->vb_vidq);
 v4l2_fh_del(&fh->fh);
 v4l2_fh_exit(&fh->fh);
 mutex_unlock(&dev->lock);

 kfree(fh);

 dev->users--;
 dprintk(1, "close (minor=%d, users=%d)\n",
  minor, dev->users);
 return 0;
}
