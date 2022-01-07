
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ctrl; } ;
struct nfp_net {TYPE_1__ dp; } ;


 int NFP_NET_CFG_CTRL_ENABLE ;

__attribute__((used)) static inline bool nfp_net_running(struct nfp_net *nn)
{
 return nn->dp.ctrl & NFP_NET_CFG_CTRL_ENABLE;
}
