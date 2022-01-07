
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* received ) (short,int,void*) ;} ;


 int stub1 (short,int,void*) ;
 TYPE_1__ xpc_interface ;

__attribute__((used)) static inline void
xpc_received(short partid, int ch_number, void *payload)
{
 if (xpc_interface.received)
  xpc_interface.received(partid, ch_number, payload);
}
