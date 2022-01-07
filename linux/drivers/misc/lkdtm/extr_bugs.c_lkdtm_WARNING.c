
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WARN_ON (int ) ;
 int warn_counter ;

void lkdtm_WARNING(void)
{
 WARN_ON(++warn_counter);
}
