
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef int MPT_RESETHANDLER ;


 size_t MPT_MAX_PROTOCOL_DRIVERS ;
 int * MptResetHandlers ;

int
mpt_reset_register(u8 cb_idx, MPT_RESETHANDLER reset_func)
{
 if (!cb_idx || cb_idx >= MPT_MAX_PROTOCOL_DRIVERS)
  return -1;

 MptResetHandlers[cb_idx] = reset_func;
 return 0;
}
