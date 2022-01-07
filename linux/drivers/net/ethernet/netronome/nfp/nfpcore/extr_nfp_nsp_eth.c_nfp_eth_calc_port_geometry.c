
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfp_eth_table {unsigned int count; TYPE_1__* ports; int max_index; } ;
struct nfp_cpp {int dummy; } ;
struct TYPE_2__ {scalar_t__ label_port; scalar_t__ label_subport; int is_split; scalar_t__ lanes; int port_lanes; int index; } ;


 int max (int ,int ) ;
 int nfp_warn (struct nfp_cpp*,char*,scalar_t__,scalar_t__) ;

__attribute__((used)) static void
nfp_eth_calc_port_geometry(struct nfp_cpp *cpp, struct nfp_eth_table *table)
{
 unsigned int i, j;

 for (i = 0; i < table->count; i++) {
  table->max_index = max(table->max_index, table->ports[i].index);

  for (j = 0; j < table->count; j++) {
   if (table->ports[i].label_port !=
       table->ports[j].label_port)
    continue;
   table->ports[i].port_lanes += table->ports[j].lanes;

   if (i == j)
    continue;
   if (table->ports[i].label_subport ==
       table->ports[j].label_subport)
    nfp_warn(cpp,
      "Port %d subport %d is a duplicate\n",
      table->ports[i].label_port,
      table->ports[i].label_subport);

   table->ports[i].is_split = 1;
  }
 }
}
