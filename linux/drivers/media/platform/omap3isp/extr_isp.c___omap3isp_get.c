
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isp_device {scalar_t__ ref_count; int isp_mutex; scalar_t__ has_context; } ;


 scalar_t__ isp_enable_clocks (struct isp_device*) ;
 int isp_enable_interrupts (struct isp_device*) ;
 int isp_restore_ctx (struct isp_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static struct isp_device *__omap3isp_get(struct isp_device *isp, bool irq)
{
 struct isp_device *__isp = isp;

 if (isp == ((void*)0))
  return ((void*)0);

 mutex_lock(&isp->isp_mutex);
 if (isp->ref_count > 0)
  goto out;

 if (isp_enable_clocks(isp) < 0) {
  __isp = ((void*)0);
  goto out;
 }


 if (isp->has_context)
  isp_restore_ctx(isp);

 if (irq)
  isp_enable_interrupts(isp);

out:
 if (__isp != ((void*)0))
  isp->ref_count++;
 mutex_unlock(&isp->isp_mutex);

 return __isp;
}
