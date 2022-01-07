
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WARN (int,char*,int ) ;
 int warn_counter ;

void lkdtm_WARNING_MESSAGE(void)
{
 WARN(1, "Warning message trigger count: %d\n", ++warn_counter);
}
