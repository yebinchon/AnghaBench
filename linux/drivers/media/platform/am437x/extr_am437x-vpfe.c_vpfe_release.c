
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vpfe_device {int lock; int pdev; int ccdc; } ;
struct file {int dummy; } ;


 int _vb2_fop_release (struct file*,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int v4l2_fh_is_singular_file (struct file*) ;
 struct vpfe_device* video_drvdata (struct file*) ;
 int vpfe_ccdc_close (int *,int ) ;

__attribute__((used)) static int vpfe_release(struct file *file)
{
 struct vpfe_device *vpfe = video_drvdata(file);
 bool fh_singular;
 int ret;

 mutex_lock(&vpfe->lock);


 fh_singular = v4l2_fh_is_singular_file(file);


 ret = _vb2_fop_release(file, ((void*)0));





 if (fh_singular)
  vpfe_ccdc_close(&vpfe->ccdc, vpfe->pdev);

 mutex_unlock(&vpfe->lock);

 return ret;
}
