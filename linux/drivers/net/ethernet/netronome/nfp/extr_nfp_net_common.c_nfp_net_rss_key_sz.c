
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_net {int rss_hfunc; } ;





 unsigned int NFP_NET_CFG_RSS_KEY_SZ ;
 int nn_warn (struct nfp_net*,char*,int) ;

unsigned int nfp_net_rss_key_sz(struct nfp_net *nn)
{
 switch (nn->rss_hfunc) {
 case 129:
  return NFP_NET_CFG_RSS_KEY_SZ;
 case 128:
  return 0;
 case 130:
  return 4;
 }

 nn_warn(nn, "Unknown hash function: %u\n", nn->rss_hfunc);
 return 0;
}
