
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PX_MAX_PROTO ;
 int ** pppox_protos ;

void unregister_pppox_proto(int proto_num)
{
 if (proto_num >= 0 && proto_num <= PX_MAX_PROTO)
  pppox_protos[proto_num] = ((void*)0);
}
