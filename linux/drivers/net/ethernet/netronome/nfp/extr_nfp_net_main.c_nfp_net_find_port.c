
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_eth_table_port {unsigned int index; } ;
struct nfp_eth_table {int count; struct nfp_eth_table_port* ports; } ;



__attribute__((used)) static struct nfp_eth_table_port *
nfp_net_find_port(struct nfp_eth_table *eth_tbl, unsigned int index)
{
 int i;

 for (i = 0; eth_tbl && i < eth_tbl->count; i++)
  if (eth_tbl->ports[i].index == index)
   return &eth_tbl->ports[i];

 return ((void*)0);
}
