
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfp_app {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int protocol; } ;
struct flow_cls_offload {int command; TYPE_1__ common; } ;


 int EOPNOTSUPP ;



 int eth_proto_is_802_3 (int ) ;
 int nfp_flower_add_offload (struct nfp_app*,struct net_device*,struct flow_cls_offload*) ;
 int nfp_flower_del_offload (struct nfp_app*,struct net_device*,struct flow_cls_offload*) ;
 int nfp_flower_get_stats (struct nfp_app*,struct net_device*,struct flow_cls_offload*) ;

__attribute__((used)) static int
nfp_flower_repr_offload(struct nfp_app *app, struct net_device *netdev,
   struct flow_cls_offload *flower)
{
 if (!eth_proto_is_802_3(flower->common.protocol))
  return -EOPNOTSUPP;

 switch (flower->command) {
 case 129:
  return nfp_flower_add_offload(app, netdev, flower);
 case 130:
  return nfp_flower_del_offload(app, netdev, flower);
 case 128:
  return nfp_flower_get_stats(app, netdev, flower);
 default:
  return -EOPNOTSUPP;
 }
}
