
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int atomic64_read (int *) ;
 int available_protocols ;

u64
ir_raw_get_allowed_protocols(void)
{
 return atomic64_read(&available_protocols);
}
