
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef int MPT_EVHANDLER ;


 size_t MPT_MAX_PROTOCOL_DRIVERS ;
 int * MptEvHandlers ;

int
mpt_event_register(u8 cb_idx, MPT_EVHANDLER ev_cbfunc)
{
 if (!cb_idx || cb_idx >= MPT_MAX_PROTOCOL_DRIVERS)
  return -1;

 MptEvHandlers[cb_idx] = ev_cbfunc;
 return 0;
}
