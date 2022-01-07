
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void lkdtm_EXCEPTION(void)
{
 *((volatile int *) 0) = 0;
}
