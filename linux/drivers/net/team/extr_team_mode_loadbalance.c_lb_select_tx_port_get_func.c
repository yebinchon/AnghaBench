
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lb_select_tx_port {int * func; int name; } ;
typedef int lb_select_tx_port_func_t ;


 int LB_SELECT_TX_PORT_LIST_COUNT ;
 struct lb_select_tx_port* lb_select_tx_port_list ;
 int strcmp (int ,char const*) ;

__attribute__((used)) static lb_select_tx_port_func_t *lb_select_tx_port_get_func(const char *name)
{
 int i;

 for (i = 0; i < LB_SELECT_TX_PORT_LIST_COUNT; i++) {
  const struct lb_select_tx_port *item;

  item = &lb_select_tx_port_list[i];
  if (!strcmp(item->name, name))
   return item->func;
 }
 return ((void*)0);
}
