
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_6__ {int chained_metadata_format; int netdev; scalar_t__ rx_offset; } ;
struct TYPE_5__ {int major; } ;
struct nfp_net {int cap; TYPE_4__* app; TYPE_2__ dp; TYPE_1__ fw_ver; void* max_mtu; } ;
struct TYPE_8__ {TYPE_3__* type; } ;
struct TYPE_7__ {int ctrl_cap_mask; } ;


 int EINVAL ;
 int NFP_NET_CFG_CAP ;
 int NFP_NET_CFG_CTRL_CHAIN_META ;
 int NFP_NET_CFG_CTRL_RSS ;
 int NFP_NET_CFG_MAX_MTU ;
 int NFP_NET_CFG_RX_OFFSET ;
 scalar_t__ NFP_NET_MAX_PREPEND ;
 scalar_t__ NFP_NET_RX_OFFSET ;
 int nn_err (struct nfp_net*,char*,scalar_t__) ;
 void* nn_readl (struct nfp_net*,int ) ;

__attribute__((used)) static int nfp_net_read_caps(struct nfp_net *nn)
{

 nn->cap = nn_readl(nn, NFP_NET_CFG_CAP);
 nn->max_mtu = nn_readl(nn, NFP_NET_CFG_MAX_MTU);





 nn->dp.chained_metadata_format = nn->fw_ver.major == 4 ||
      !nn->dp.netdev ||
      !(nn->cap & NFP_NET_CFG_CTRL_RSS) ||
      nn->cap & NFP_NET_CFG_CTRL_CHAIN_META;



 if (nn->dp.chained_metadata_format && nn->fw_ver.major != 4)
  nn->cap &= ~NFP_NET_CFG_CTRL_RSS;


 if (nn->fw_ver.major >= 2) {
  u32 reg;

  reg = nn_readl(nn, NFP_NET_CFG_RX_OFFSET);
  if (reg > NFP_NET_MAX_PREPEND) {
   nn_err(nn, "Invalid rx offset: %d\n", reg);
   return -EINVAL;
  }
  nn->dp.rx_offset = reg;
 } else {
  nn->dp.rx_offset = NFP_NET_RX_OFFSET;
 }


 if (!nn->dp.netdev)
  nn->cap &= nn->app->type->ctrl_cap_mask;

 return 0;
}
