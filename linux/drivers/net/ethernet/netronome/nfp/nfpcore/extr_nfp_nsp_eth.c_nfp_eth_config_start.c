
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union eth_table_entry {int port; } ;
struct nfp_nsp {int dummy; } ;
struct nfp_cpp {int dummy; } ;


 int EIO ;
 int ENOMEM ;
 struct nfp_nsp* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct nfp_nsp*) ;
 int NSP_ETH_PORT_LANES_MASK ;
 int NSP_ETH_TABLE_SIZE ;
 int kfree (union eth_table_entry*) ;
 union eth_table_entry* kzalloc (int ,int ) ;
 int nfp_err (struct nfp_cpp*,char*,int) ;
 int nfp_nsp_close (struct nfp_nsp*) ;
 int nfp_nsp_config_set_state (struct nfp_nsp*,union eth_table_entry*,unsigned int) ;
 struct nfp_nsp* nfp_nsp_open (struct nfp_cpp*) ;
 int nfp_nsp_read_eth_table (struct nfp_nsp*,union eth_table_entry*,int ) ;
 int nfp_warn (struct nfp_cpp*,char*,unsigned int) ;

struct nfp_nsp *nfp_eth_config_start(struct nfp_cpp *cpp, unsigned int idx)
{
 union eth_table_entry *entries;
 struct nfp_nsp *nsp;
 int ret;

 entries = kzalloc(NSP_ETH_TABLE_SIZE, GFP_KERNEL);
 if (!entries)
  return ERR_PTR(-ENOMEM);

 nsp = nfp_nsp_open(cpp);
 if (IS_ERR(nsp)) {
  kfree(entries);
  return nsp;
 }

 ret = nfp_nsp_read_eth_table(nsp, entries, NSP_ETH_TABLE_SIZE);
 if (ret < 0) {
  nfp_err(cpp, "reading port table failed %d\n", ret);
  goto err;
 }

 if (!(entries[idx].port & NSP_ETH_PORT_LANES_MASK)) {
  nfp_warn(cpp, "trying to set port state on disabled port %d\n",
    idx);
  goto err;
 }

 nfp_nsp_config_set_state(nsp, entries, idx);
 return nsp;

err:
 nfp_nsp_close(nsp);
 kfree(entries);
 return ERR_PTR(-EIO);
}
