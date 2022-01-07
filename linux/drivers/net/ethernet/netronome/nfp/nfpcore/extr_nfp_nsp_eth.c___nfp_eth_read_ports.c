
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union eth_table_entry {int port; } ;
struct nfp_nsp {int dummy; } ;
struct nfp_eth_table {int count; int * ports; } ;
struct nfp_cpp {int dummy; } ;


 int GFP_KERNEL ;
 int NSP_ETH_MAX_COUNT ;
 int NSP_ETH_PORT_LANES_MASK ;
 int NSP_ETH_TABLE_SIZE ;
 int kfree (union eth_table_entry*) ;
 void* kzalloc (int ,int ) ;
 int nfp_err (struct nfp_cpp*,char*,int,...) ;
 int nfp_eth_calc_port_geometry (struct nfp_cpp*,struct nfp_eth_table*) ;
 int nfp_eth_calc_port_type (struct nfp_cpp*,int *) ;
 int nfp_eth_port_translate (struct nfp_nsp*,union eth_table_entry*,int,int *) ;
 int nfp_nsp_read_eth_table (struct nfp_nsp*,union eth_table_entry*,int ) ;
 int ports ;
 int struct_size (struct nfp_eth_table*,int ,int) ;

struct nfp_eth_table *
__nfp_eth_read_ports(struct nfp_cpp *cpp, struct nfp_nsp *nsp)
{
 union eth_table_entry *entries;
 struct nfp_eth_table *table;
 int i, j, ret, cnt = 0;

 entries = kzalloc(NSP_ETH_TABLE_SIZE, GFP_KERNEL);
 if (!entries)
  return ((void*)0);

 ret = nfp_nsp_read_eth_table(nsp, entries, NSP_ETH_TABLE_SIZE);
 if (ret < 0) {
  nfp_err(cpp, "reading port table failed %d\n", ret);
  goto err;
 }

 for (i = 0; i < NSP_ETH_MAX_COUNT; i++)
  if (entries[i].port & NSP_ETH_PORT_LANES_MASK)
   cnt++;





 if (ret && ret != cnt) {
  nfp_err(cpp, "table entry count reported (%d) does not match entries present (%d)\n",
   ret, cnt);
  goto err;
 }

 table = kzalloc(struct_size(table, ports, cnt), GFP_KERNEL);
 if (!table)
  goto err;

 table->count = cnt;
 for (i = 0, j = 0; i < NSP_ETH_MAX_COUNT; i++)
  if (entries[i].port & NSP_ETH_PORT_LANES_MASK)
   nfp_eth_port_translate(nsp, &entries[i], i,
            &table->ports[j++]);

 nfp_eth_calc_port_geometry(cpp, table);
 for (i = 0; i < table->count; i++)
  nfp_eth_calc_port_type(cpp, &table->ports[i]);

 kfree(entries);

 return table;

err:
 kfree(entries);
 return ((void*)0);
}
