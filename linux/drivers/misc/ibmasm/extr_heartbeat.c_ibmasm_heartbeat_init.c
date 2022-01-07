
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct service_processor {int * heartbeat; } ;


 int ENOMEM ;
 int HEARTBEAT_BUFFER_SIZE ;
 int * ibmasm_new_command (struct service_processor*,int ) ;

int ibmasm_heartbeat_init(struct service_processor *sp)
{
 sp->heartbeat = ibmasm_new_command(sp, HEARTBEAT_BUFFER_SIZE);
 if (sp->heartbeat == ((void*)0))
  return -ENOMEM;

 return 0;
}
