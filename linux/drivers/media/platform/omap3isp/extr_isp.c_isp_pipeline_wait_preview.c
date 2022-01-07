
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isp_device {int isp_prev; } ;


 int omap3isp_preview_busy (int *) ;

__attribute__((used)) static int isp_pipeline_wait_preview(struct isp_device *isp)
{
 return omap3isp_preview_busy(&isp->isp_prev);
}
