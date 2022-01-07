
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isp_device {scalar_t__ ref_count; int has_context; int isp_mutex; scalar_t__ stop_failure; int crashed; } ;


 int BUG_ON (int) ;
 int isp_disable_clocks (struct isp_device*) ;
 int isp_disable_interrupts (struct isp_device*) ;
 int isp_reset (struct isp_device*) ;
 int isp_save_ctx (struct isp_device*) ;
 int media_entity_enum_empty (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void __omap3isp_put(struct isp_device *isp, bool save_ctx)
{
 if (isp == ((void*)0))
  return;

 mutex_lock(&isp->isp_mutex);
 BUG_ON(isp->ref_count == 0);
 if (--isp->ref_count == 0) {
  isp_disable_interrupts(isp);
  if (save_ctx) {
   isp_save_ctx(isp);
   isp->has_context = 1;
  }



  if (!media_entity_enum_empty(&isp->crashed) ||
      isp->stop_failure)
   isp_reset(isp);
  isp_disable_clocks(isp);
 }
 mutex_unlock(&isp->isp_mutex);
}
