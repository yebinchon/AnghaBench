
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int xpc_notify_func ;
typedef int u32 ;
typedef int u16 ;
typedef enum xp_retval { ____Placeholder_xp_retval } xp_retval ;
struct TYPE_2__ {int (* send_notify ) (short,int,int ,void*,int ,int ,void*) ;} ;


 int stub1 (short,int,int ,void*,int ,int ,void*) ;
 int xpNotLoaded ;
 TYPE_1__ xpc_interface ;

__attribute__((used)) static inline enum xp_retval
xpc_send_notify(short partid, int ch_number, u32 flags, void *payload,
  u16 payload_size, xpc_notify_func func, void *key)
{
 if (!xpc_interface.send_notify)
  return xpNotLoaded;

 return xpc_interface.send_notify(partid, ch_number, flags, payload,
      payload_size, func, key);
}
