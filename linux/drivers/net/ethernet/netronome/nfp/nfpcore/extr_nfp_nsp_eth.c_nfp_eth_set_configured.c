
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union eth_table_entry {int control; int state; } ;
typedef int u64 ;
struct nfp_nsp {int dummy; } ;
struct nfp_cpp {int dummy; } ;


 int EOPNOTSUPP ;
 int FIELD_GET (int ,int ) ;
 int FIELD_PREP (int ,int) ;
 scalar_t__ IS_ERR (struct nfp_nsp*) ;
 int NSP_ETH_CTRL_CONFIGURED ;
 int NSP_ETH_STATE_CONFIGURED ;
 int PTR_ERR (struct nfp_nsp*) ;
 int cpu_to_le64 (int ) ;
 int le64_to_cpu (int ) ;
 int nfp_eth_config_cleanup_end (struct nfp_nsp*) ;
 int nfp_eth_config_commit_end (struct nfp_nsp*) ;
 struct nfp_nsp* nfp_eth_config_start (struct nfp_cpp*,unsigned int) ;
 union eth_table_entry* nfp_nsp_config_entries (struct nfp_nsp*) ;
 int nfp_nsp_config_set_modified (struct nfp_nsp*,int) ;
 int nfp_nsp_get_abi_ver_minor (struct nfp_nsp*) ;

int nfp_eth_set_configured(struct nfp_cpp *cpp, unsigned int idx, bool configed)
{
 union eth_table_entry *entries;
 struct nfp_nsp *nsp;
 u64 reg;

 nsp = nfp_eth_config_start(cpp, idx);
 if (IS_ERR(nsp))
  return PTR_ERR(nsp);




 if (nfp_nsp_get_abi_ver_minor(nsp) < 20) {
  nfp_eth_config_cleanup_end(nsp);
  return -EOPNOTSUPP;
 }

 entries = nfp_nsp_config_entries(nsp);


 reg = le64_to_cpu(entries[idx].state);
 if (configed != FIELD_GET(NSP_ETH_STATE_CONFIGURED, reg)) {
  reg = le64_to_cpu(entries[idx].control);
  reg &= ~NSP_ETH_CTRL_CONFIGURED;
  reg |= FIELD_PREP(NSP_ETH_CTRL_CONFIGURED, configed);
  entries[idx].control = cpu_to_le64(reg);

  nfp_nsp_config_set_modified(nsp, 1);
 }

 return nfp_eth_config_commit_end(nsp);
}
