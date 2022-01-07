
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wbsd_host {scalar_t__ config; } ;


 int BUG_ON (int) ;
 int LOCK_CODE ;
 int outb (int ,scalar_t__) ;

__attribute__((used)) static inline void wbsd_lock_config(struct wbsd_host *host)
{
 BUG_ON(host->config == 0);

 outb(LOCK_CODE, host->config);
}
