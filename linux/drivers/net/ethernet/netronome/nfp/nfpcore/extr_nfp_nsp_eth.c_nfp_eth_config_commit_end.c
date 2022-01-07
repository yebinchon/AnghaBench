
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union eth_table_entry {int dummy; } eth_table_entry ;
struct nfp_nsp {int dummy; } ;


 int NSP_ETH_TABLE_SIZE ;
 int nfp_eth_config_cleanup_end (struct nfp_nsp*) ;
 union eth_table_entry* nfp_nsp_config_entries (struct nfp_nsp*) ;
 scalar_t__ nfp_nsp_config_modified (struct nfp_nsp*) ;
 int nfp_nsp_write_eth_table (struct nfp_nsp*,union eth_table_entry*,int ) ;

int nfp_eth_config_commit_end(struct nfp_nsp *nsp)
{
 union eth_table_entry *entries = nfp_nsp_config_entries(nsp);
 int ret = 1;

 if (nfp_nsp_config_modified(nsp)) {
  ret = nfp_nsp_write_eth_table(nsp, entries, NSP_ETH_TABLE_SIZE);
  ret = ret < 0 ? ret : 0;
 }

 nfp_eth_config_cleanup_end(nsp);

 return ret;
}
