
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union eth_table_entry {int dummy; } eth_table_entry ;
struct nfp_nsp {int dummy; } ;


 int kfree (union eth_table_entry*) ;
 int nfp_nsp_close (struct nfp_nsp*) ;
 int nfp_nsp_config_clear_state (struct nfp_nsp*) ;
 union eth_table_entry* nfp_nsp_config_entries (struct nfp_nsp*) ;
 int nfp_nsp_config_set_modified (struct nfp_nsp*,int) ;

void nfp_eth_config_cleanup_end(struct nfp_nsp *nsp)
{
 union eth_table_entry *entries = nfp_nsp_config_entries(nsp);

 nfp_nsp_config_set_modified(nsp, 0);
 nfp_nsp_config_clear_state(nsp);
 nfp_nsp_close(nsp);
 kfree(entries);
}
