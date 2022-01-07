
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int msleep (unsigned int) ;
 int usleep_range (unsigned int,unsigned int) ;

__attribute__((used)) static inline void mmc_delay(unsigned int ms)
{
 if (ms <= 20)
  usleep_range(ms * 1000, ms * 1250);
 else
  msleep(ms);
}
