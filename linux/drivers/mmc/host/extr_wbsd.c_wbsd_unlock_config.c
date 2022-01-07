
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wbsd_host {scalar_t__ config; int unlock_code; } ;


 int BUG_ON (int) ;
 int outb (int ,scalar_t__) ;

__attribute__((used)) static inline void wbsd_unlock_config(struct wbsd_host *host)
{
 BUG_ON(host->config == 0);

 outb(host->unlock_code, host->config);
 outb(host->unlock_code, host->config);
}
