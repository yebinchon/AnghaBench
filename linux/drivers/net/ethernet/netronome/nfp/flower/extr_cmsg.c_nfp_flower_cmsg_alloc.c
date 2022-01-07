
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nfp_flower_cmsg_hdr {int type; int version; scalar_t__ pad; } ;
struct nfp_app {int dummy; } ;
typedef int gfp_t ;
typedef enum nfp_flower_cmsg_type_port { ____Placeholder_nfp_flower_cmsg_type_port } nfp_flower_cmsg_type_port ;


 scalar_t__ NFP_FLOWER_CMSG_HLEN ;
 int NFP_FLOWER_CMSG_VER1 ;
 struct sk_buff* nfp_app_ctrl_msg_alloc (struct nfp_app*,unsigned int,int ) ;
 struct nfp_flower_cmsg_hdr* nfp_flower_cmsg_get_hdr (struct sk_buff*) ;
 int skb_put (struct sk_buff*,unsigned int) ;

struct sk_buff *
nfp_flower_cmsg_alloc(struct nfp_app *app, unsigned int size,
        enum nfp_flower_cmsg_type_port type, gfp_t flag)
{
 struct nfp_flower_cmsg_hdr *ch;
 struct sk_buff *skb;

 size += NFP_FLOWER_CMSG_HLEN;

 skb = nfp_app_ctrl_msg_alloc(app, size, flag);
 if (!skb)
  return ((void*)0);

 ch = nfp_flower_cmsg_get_hdr(skb);
 ch->pad = 0;
 ch->version = NFP_FLOWER_CMSG_VER1;
 ch->type = type;
 skb_put(skb, size);

 return skb;
}
