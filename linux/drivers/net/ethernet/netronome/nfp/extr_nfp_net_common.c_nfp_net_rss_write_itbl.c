
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_net {scalar_t__ rss_itbl; } ;


 scalar_t__ NFP_NET_CFG_RSS_ITBL ;
 int NFP_NET_CFG_RSS_ITBL_SZ ;
 int get_unaligned_le32 (scalar_t__) ;
 int nn_writel (struct nfp_net*,scalar_t__,int ) ;

void nfp_net_rss_write_itbl(struct nfp_net *nn)
{
 int i;

 for (i = 0; i < NFP_NET_CFG_RSS_ITBL_SZ; i += 4)
  nn_writel(nn, NFP_NET_CFG_RSS_ITBL + i,
     get_unaligned_le32(nn->rss_itbl + i));
}
