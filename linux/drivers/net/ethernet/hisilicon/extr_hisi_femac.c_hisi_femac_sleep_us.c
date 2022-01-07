
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int DIV_ROUND_UP (int,int) ;
 int msleep (int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void hisi_femac_sleep_us(u32 time_us)
{
 u32 time_ms;

 if (!time_us)
  return;

 time_ms = DIV_ROUND_UP(time_us, 1000);
 if (time_ms < 20)
  usleep_range(time_us, time_us + 500);
 else
  msleep(time_ms);
}
