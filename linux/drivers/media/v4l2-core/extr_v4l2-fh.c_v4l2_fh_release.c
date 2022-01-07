
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_fh {int dummy; } ;
struct file {struct v4l2_fh* private_data; } ;


 int kfree (struct v4l2_fh*) ;
 int v4l2_fh_del (struct v4l2_fh*) ;
 int v4l2_fh_exit (struct v4l2_fh*) ;

int v4l2_fh_release(struct file *filp)
{
 struct v4l2_fh *fh = filp->private_data;

 if (fh) {
  v4l2_fh_del(fh);
  v4l2_fh_exit(fh);
  kfree(fh);
 }
 return 0;
}
