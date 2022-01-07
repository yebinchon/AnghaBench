
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct poll_table_struct {int dummy; } ;
struct file {scalar_t__ private_data; } ;
struct camif_vp {scalar_t__ owner; int vb_queue; struct camif_dev* camif; } ;
struct camif_dev {int lock; } ;
typedef int __poll_t ;


 int EPOLLERR ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int vb2_poll (int *,struct file*,struct poll_table_struct*) ;
 struct camif_vp* video_drvdata (struct file*) ;

__attribute__((used)) static __poll_t s3c_camif_poll(struct file *file,
       struct poll_table_struct *wait)
{
 struct camif_vp *vp = video_drvdata(file);
 struct camif_dev *camif = vp->camif;
 __poll_t ret;

 mutex_lock(&camif->lock);
 if (vp->owner && vp->owner != file->private_data)
  ret = EPOLLERR;
 else
  ret = vb2_poll(&vp->vb_queue, file, wait);

 mutex_unlock(&camif->lock);
 return ret;
}
