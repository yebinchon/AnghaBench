
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct camss {scalar_t__ version; int * genpd; int dev; int media_dev; int v4l2_dev; } ;


 scalar_t__ CAMSS_8x96 ;
 size_t PM_DOMAIN_VFE0 ;
 size_t PM_DOMAIN_VFE1 ;
 int dev_pm_domain_detach (int ,int) ;
 int kfree (struct camss*) ;
 int media_device_cleanup (int *) ;
 int media_device_unregister (int *) ;
 int pm_runtime_disable (int ) ;
 int v4l2_device_unregister (int *) ;

void camss_delete(struct camss *camss)
{
 v4l2_device_unregister(&camss->v4l2_dev);
 media_device_unregister(&camss->media_dev);
 media_device_cleanup(&camss->media_dev);

 pm_runtime_disable(camss->dev);

 if (camss->version == CAMSS_8x96) {
  dev_pm_domain_detach(camss->genpd[PM_DOMAIN_VFE0], 1);
  dev_pm_domain_detach(camss->genpd[PM_DOMAIN_VFE1], 1);
 }

 kfree(camss);
}
