
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int dev; } ;
struct nfp_net {int rss_hfunc; int rss_cfg; int rss_key; TYPE_1__ dp; } ;


 unsigned long ETH_RSS_HASH_TOP_BIT ;
 unsigned long FIELD_GET (int ,int ) ;
 int FIELD_PREP (int ,int) ;
 int NFP_NET_CFG_RSS_CAP ;
 int NFP_NET_CFG_RSS_CAP_HFUNC ;
 int NFP_NET_CFG_RSS_HFUNC ;
 unsigned long NFP_NET_CFG_RSS_HFUNCS ;
 int NFP_NET_CFG_RSS_IPV4_TCP ;
 int NFP_NET_CFG_RSS_IPV6_TCP ;
 int NFP_NET_CFG_RSS_MASK ;
 int NFP_NET_CFG_RSS_TOEPLITZ ;
 int dev_warn (int ,char*) ;
 unsigned long find_first_bit (unsigned long*,unsigned long) ;
 int netdev_rss_key_fill (int ,int ) ;
 int nfp_net_rss_init_itbl (struct nfp_net*) ;
 int nfp_net_rss_key_sz (struct nfp_net*) ;
 int nn_readl (struct nfp_net*,int ) ;

__attribute__((used)) static void nfp_net_rss_init(struct nfp_net *nn)
{
 unsigned long func_bit, rss_cap_hfunc;
 u32 reg;


 reg = nn_readl(nn, NFP_NET_CFG_RSS_CAP);
 rss_cap_hfunc = FIELD_GET(NFP_NET_CFG_RSS_CAP_HFUNC, reg);
 if (!rss_cap_hfunc)
  rss_cap_hfunc = FIELD_GET(NFP_NET_CFG_RSS_CAP_HFUNC,
       NFP_NET_CFG_RSS_TOEPLITZ);

 func_bit = find_first_bit(&rss_cap_hfunc, NFP_NET_CFG_RSS_HFUNCS);
 if (func_bit == NFP_NET_CFG_RSS_HFUNCS) {
  dev_warn(nn->dp.dev,
    "Bad RSS config, defaulting to Toeplitz hash\n");
  func_bit = ETH_RSS_HASH_TOP_BIT;
 }
 nn->rss_hfunc = 1 << func_bit;

 netdev_rss_key_fill(nn->rss_key, nfp_net_rss_key_sz(nn));

 nfp_net_rss_init_itbl(nn);


 nn->rss_cfg = NFP_NET_CFG_RSS_IPV4_TCP |
        NFP_NET_CFG_RSS_IPV6_TCP |
        FIELD_PREP(NFP_NET_CFG_RSS_HFUNC, nn->rss_hfunc) |
        NFP_NET_CFG_RSS_MASK;
}
