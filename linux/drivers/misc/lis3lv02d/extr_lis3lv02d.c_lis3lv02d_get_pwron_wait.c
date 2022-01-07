
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lis3lv02d {int pwron_delay; } ;


 int ENXIO ;
 scalar_t__ WARN_ONCE (int,char*) ;
 int lis3lv02d_get_odr (struct lis3lv02d*) ;
 int msleep (int) ;

__attribute__((used)) static int lis3lv02d_get_pwron_wait(struct lis3lv02d *lis3)
{
 int div = lis3lv02d_get_odr(lis3);

 if (WARN_ONCE(div == 0, "device returned spurious data"))
  return -ENXIO;


 msleep(lis3->pwron_delay / div);
 return 0;
}
