
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nfp_flower_cmsg_mac_repr {unsigned int num_ports; int reserved; } ;
struct nfp_app {int dummy; } ;


 int GFP_KERNEL ;
 int NFP_FLOWER_CMSG_TYPE_MAC_REPR ;
 int memset (int ,int ,int) ;
 struct sk_buff* nfp_flower_cmsg_alloc (struct nfp_app*,int ,int ,int ) ;
 struct nfp_flower_cmsg_mac_repr* nfp_flower_cmsg_get_data (struct sk_buff*) ;
 int ports ;
 int struct_size (struct nfp_flower_cmsg_mac_repr*,int ,unsigned int) ;

struct sk_buff *
nfp_flower_cmsg_mac_repr_start(struct nfp_app *app, unsigned int num_ports)
{
 struct nfp_flower_cmsg_mac_repr *msg;
 struct sk_buff *skb;

 skb = nfp_flower_cmsg_alloc(app, struct_size(msg, ports, num_ports),
        NFP_FLOWER_CMSG_TYPE_MAC_REPR, GFP_KERNEL);
 if (!skb)
  return ((void*)0);

 msg = nfp_flower_cmsg_get_data(skb);
 memset(msg->reserved, 0, sizeof(msg->reserved));
 msg->num_ports = num_ports;

 return skb;
}
