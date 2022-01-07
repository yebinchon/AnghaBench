
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct nfp_repr {TYPE_4__* app; TYPE_3__* dst; } ;
struct nfp_flower_cmsg_portmod {int info; int mtu; scalar_t__ reserved; int portnum; } ;
struct TYPE_8__ {int ctrl; } ;
struct TYPE_5__ {int port_id; } ;
struct TYPE_6__ {TYPE_1__ port_info; } ;
struct TYPE_7__ {TYPE_2__ u; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int NFP_FLOWER_CMSG_PORTMOD_MTU_CHANGE_ONLY ;
 int NFP_FLOWER_CMSG_TYPE_PORT_MOD ;
 int cpu_to_be16 (unsigned int) ;
 int cpu_to_be32 (int ) ;
 int nfp_ctrl_tx (int ,struct sk_buff*) ;
 struct sk_buff* nfp_flower_cmsg_alloc (TYPE_4__*,int,int ,int ) ;
 struct nfp_flower_cmsg_portmod* nfp_flower_cmsg_get_data (struct sk_buff*) ;

int nfp_flower_cmsg_portmod(struct nfp_repr *repr, bool carrier_ok,
       unsigned int mtu, bool mtu_only)
{
 struct nfp_flower_cmsg_portmod *msg;
 struct sk_buff *skb;

 skb = nfp_flower_cmsg_alloc(repr->app, sizeof(*msg),
        NFP_FLOWER_CMSG_TYPE_PORT_MOD, GFP_KERNEL);
 if (!skb)
  return -ENOMEM;

 msg = nfp_flower_cmsg_get_data(skb);
 msg->portnum = cpu_to_be32(repr->dst->u.port_info.port_id);
 msg->reserved = 0;
 msg->info = carrier_ok;

 if (mtu_only)
  msg->info |= NFP_FLOWER_CMSG_PORTMOD_MTU_CHANGE_ONLY;

 msg->mtu = cpu_to_be16(mtu);

 nfp_ctrl_tx(repr->app->ctrl, skb);

 return 0;
}
