
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wbsd_host {int dummy; } ;


 int wbsd_release_dma (struct wbsd_host*) ;
 int wbsd_release_irq (struct wbsd_host*) ;
 int wbsd_release_regions (struct wbsd_host*) ;

__attribute__((used)) static void wbsd_release_resources(struct wbsd_host *host)
{
 wbsd_release_dma(host);
 wbsd_release_irq(host);
 wbsd_release_regions(host);
}
