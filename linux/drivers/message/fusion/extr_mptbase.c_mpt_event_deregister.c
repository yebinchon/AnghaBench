
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;


 size_t MPT_MAX_PROTOCOL_DRIVERS ;
 int ** MptEvHandlers ;

void
mpt_event_deregister(u8 cb_idx)
{
 if (!cb_idx || cb_idx >= MPT_MAX_PROTOCOL_DRIVERS)
  return;

 MptEvHandlers[cb_idx] = ((void*)0);
}
