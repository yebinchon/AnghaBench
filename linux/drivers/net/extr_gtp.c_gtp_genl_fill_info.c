
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int dummy; } ;
struct TYPE_9__ {int i_tei; int o_tei; } ;
struct TYPE_8__ {int flow; int tid; } ;
struct TYPE_10__ {TYPE_4__ v1; TYPE_3__ v0; } ;
struct TYPE_7__ {int s_addr; } ;
struct TYPE_6__ {int s_addr; } ;
struct pdp_ctx {int gtp_version; TYPE_5__ u; TYPE_2__ ms_addr_ip4; TYPE_1__ peer_addr_ip4; } ;


 int EMSGSIZE ;
 int GTPA_FLOW ;
 int GTPA_I_TEI ;
 int GTPA_MS_ADDRESS ;
 int GTPA_O_TEI ;
 int GTPA_PAD ;
 int GTPA_PEER_ADDRESS ;
 int GTPA_TID ;
 int GTPA_VERSION ;


 int genlmsg_cancel (struct sk_buff*,void*) ;
 int genlmsg_end (struct sk_buff*,void*) ;
 void* genlmsg_put (struct sk_buff*,int ,int ,int *,int ,int ) ;
 int gtp_genl_family ;
 scalar_t__ nla_put_be32 (struct sk_buff*,int ,int ) ;
 int nla_put_u16 (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,int) ;
 int nla_put_u64_64bit (struct sk_buff*,int ,int ,int ) ;

__attribute__((used)) static int gtp_genl_fill_info(struct sk_buff *skb, u32 snd_portid, u32 snd_seq,
         u32 type, struct pdp_ctx *pctx)
{
 void *genlh;

 genlh = genlmsg_put(skb, snd_portid, snd_seq, &gtp_genl_family, 0,
       type);
 if (genlh == ((void*)0))
  goto nlmsg_failure;

 if (nla_put_u32(skb, GTPA_VERSION, pctx->gtp_version) ||
     nla_put_be32(skb, GTPA_PEER_ADDRESS, pctx->peer_addr_ip4.s_addr) ||
     nla_put_be32(skb, GTPA_MS_ADDRESS, pctx->ms_addr_ip4.s_addr))
  goto nla_put_failure;

 switch (pctx->gtp_version) {
 case 129:
  if (nla_put_u64_64bit(skb, GTPA_TID, pctx->u.v0.tid, GTPA_PAD) ||
      nla_put_u16(skb, GTPA_FLOW, pctx->u.v0.flow))
   goto nla_put_failure;
  break;
 case 128:
  if (nla_put_u32(skb, GTPA_I_TEI, pctx->u.v1.i_tei) ||
      nla_put_u32(skb, GTPA_O_TEI, pctx->u.v1.o_tei))
   goto nla_put_failure;
  break;
 }
 genlmsg_end(skb, genlh);
 return 0;

nlmsg_failure:
nla_put_failure:
 genlmsg_cancel(skb, genlh);
 return -EMSGSIZE;
}
