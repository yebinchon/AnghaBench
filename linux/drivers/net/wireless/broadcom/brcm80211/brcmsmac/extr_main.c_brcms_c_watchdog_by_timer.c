
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brcms_c_info {int dummy; } ;


 int brcms_c_watchdog (struct brcms_c_info*) ;

__attribute__((used)) static void brcms_c_watchdog_by_timer(void *arg)
{
 struct brcms_c_info *wlc = (struct brcms_c_info *) arg;

 brcms_c_watchdog(wlc);
}
