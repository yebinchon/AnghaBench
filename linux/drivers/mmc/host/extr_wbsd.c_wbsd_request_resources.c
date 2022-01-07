
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wbsd_host {int dummy; } ;


 int wbsd_request_dma (struct wbsd_host*,int) ;
 int wbsd_request_irq (struct wbsd_host*,int) ;
 int wbsd_request_region (struct wbsd_host*,int) ;

__attribute__((used)) static int wbsd_request_resources(struct wbsd_host *host,
 int base, int irq, int dma)
{
 int ret;




 ret = wbsd_request_region(host, base);
 if (ret)
  return ret;




 ret = wbsd_request_irq(host, irq);
 if (ret)
  return ret;




 wbsd_request_dma(host, dma);

 return 0;
}
