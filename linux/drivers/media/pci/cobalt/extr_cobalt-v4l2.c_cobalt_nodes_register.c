
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cobalt {int dummy; } ;


 int COBALT_NUM_STREAMS ;
 int cobalt_node_register (struct cobalt*,int) ;

int cobalt_nodes_register(struct cobalt *cobalt)
{
 int node, ret;


 for (node = 0; node < COBALT_NUM_STREAMS; node++) {
  ret = cobalt_node_register(cobalt, node);
  if (ret)
   return ret;
 }
 return 0;
}
