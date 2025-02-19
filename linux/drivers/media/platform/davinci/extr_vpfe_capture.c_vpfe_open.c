
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vpfe_fh {int fh; scalar_t__ io_allowed; struct vpfe_device* vpfe_dev; } ;
struct vpfe_device {int lock; int usrs; int initialized; int v4l2_dev; TYPE_1__* cfg; } ;
struct video_device {int dummy; } ;
struct file {struct vpfe_fh* private_data; } ;
struct TYPE_2__ {int num_subdevs; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int debug ;
 int kfree (struct vpfe_fh*) ;
 struct vpfe_fh* kmalloc (int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int v4l2_dbg (int,int ,int *,char*) ;
 int v4l2_err (int *,char*) ;
 int v4l2_fh_add (int *) ;
 int v4l2_fh_exit (int *) ;
 int v4l2_fh_init (int *,struct video_device*) ;
 struct video_device* video_devdata (struct file*) ;
 struct vpfe_device* video_drvdata (struct file*) ;
 scalar_t__ vpfe_initialize_device (struct vpfe_device*) ;

__attribute__((used)) static int vpfe_open(struct file *file)
{
 struct vpfe_device *vpfe_dev = video_drvdata(file);
 struct video_device *vdev = video_devdata(file);
 struct vpfe_fh *fh;

 v4l2_dbg(1, debug, &vpfe_dev->v4l2_dev, "vpfe_open\n");

 if (!vpfe_dev->cfg->num_subdevs) {
  v4l2_err(&vpfe_dev->v4l2_dev, "No decoder registered\n");
  return -ENODEV;
 }


 fh = kmalloc(sizeof(*fh), GFP_KERNEL);
 if (!fh)
  return -ENOMEM;


 file->private_data = fh;
 fh->vpfe_dev = vpfe_dev;
 v4l2_fh_init(&fh->fh, vdev);
 mutex_lock(&vpfe_dev->lock);

 if (!vpfe_dev->initialized) {
  if (vpfe_initialize_device(vpfe_dev)) {
   mutex_unlock(&vpfe_dev->lock);
   v4l2_fh_exit(&fh->fh);
   kfree(fh);
   return -ENODEV;
  }
 }

 vpfe_dev->usrs++;

 fh->io_allowed = 0;
 v4l2_fh_add(&fh->fh);
 mutex_unlock(&vpfe_dev->lock);
 return 0;
}
