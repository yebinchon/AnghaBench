
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ MPT_DRIVER_CLASS ;


 int MPT_MAX_PROTOCOL_DRIVERS ;
 scalar_t__* MptDriverClass ;

__attribute__((used)) static u8
mpt_get_cb_idx(MPT_DRIVER_CLASS dclass)
{
 u8 cb_idx;

 for (cb_idx = MPT_MAX_PROTOCOL_DRIVERS-1; cb_idx; cb_idx--)
  if (MptDriverClass[cb_idx] == dclass)
   return cb_idx;
 return 0;
}
