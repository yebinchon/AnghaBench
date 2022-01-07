
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
typedef enum xp_retval { ____Placeholder_xp_retval } xp_retval ;
struct TYPE_2__ {int (* send ) (short,int,int ,void*,int ) ;} ;


 int stub1 (short,int,int ,void*,int ) ;
 int xpNotLoaded ;
 TYPE_1__ xpc_interface ;

__attribute__((used)) static inline enum xp_retval
xpc_send(short partid, int ch_number, u32 flags, void *payload,
  u16 payload_size)
{
 if (!xpc_interface.send)
  return xpNotLoaded;

 return xpc_interface.send(partid, ch_number, flags, payload,
      payload_size);
}
