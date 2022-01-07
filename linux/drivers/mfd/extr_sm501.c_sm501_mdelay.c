
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sm501_devdata {scalar_t__ in_suspend; } ;


 int mdelay (unsigned int) ;
 int msleep (unsigned int) ;

__attribute__((used)) static inline void sm501_mdelay(struct sm501_devdata *sm, unsigned int delay)
{




 if (sm->in_suspend)
  mdelay(delay);
 else
  msleep(delay);
}
