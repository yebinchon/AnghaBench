
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef size_t u32 ;
struct sk_buff {int dummy; } ;
struct nfp_fl_rule_metadata {int dummy; } ;
struct TYPE_2__ {size_t key_len; size_t mask_len; size_t act_len; } ;
struct nfp_fl_payload {TYPE_1__ meta; TYPE_1__* action_data; TYPE_1__* mask_data; TYPE_1__* unmasked_data; } ;
struct nfp_app {int ctrl; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int NFP_FL_LW_SIZ ;
 int memcpy (unsigned char*,TYPE_1__*,size_t) ;
 int nfp_ctrl_tx (int ,struct sk_buff*) ;
 struct sk_buff* nfp_flower_cmsg_alloc (struct nfp_app*,size_t,int ,int ) ;
 unsigned char* nfp_flower_cmsg_get_data (struct sk_buff*) ;

__attribute__((used)) static int
nfp_flower_xmit_flow(struct nfp_app *app, struct nfp_fl_payload *nfp_flow,
       u8 mtype)
{
 u32 meta_len, key_len, mask_len, act_len, tot_len;
 struct sk_buff *skb;
 unsigned char *msg;

 meta_len = sizeof(struct nfp_fl_rule_metadata);
 key_len = nfp_flow->meta.key_len;
 mask_len = nfp_flow->meta.mask_len;
 act_len = nfp_flow->meta.act_len;

 tot_len = meta_len + key_len + mask_len + act_len;




 nfp_flow->meta.key_len >>= NFP_FL_LW_SIZ;
 nfp_flow->meta.mask_len >>= NFP_FL_LW_SIZ;
 nfp_flow->meta.act_len >>= NFP_FL_LW_SIZ;

 skb = nfp_flower_cmsg_alloc(app, tot_len, mtype, GFP_KERNEL);
 if (!skb)
  return -ENOMEM;

 msg = nfp_flower_cmsg_get_data(skb);
 memcpy(msg, &nfp_flow->meta, meta_len);
 memcpy(&msg[meta_len], nfp_flow->unmasked_data, key_len);
 memcpy(&msg[meta_len + key_len], nfp_flow->mask_data, mask_len);
 memcpy(&msg[meta_len + key_len + mask_len],
        nfp_flow->action_data, act_len);




 nfp_flow->meta.key_len <<= NFP_FL_LW_SIZ;
 nfp_flow->meta.mask_len <<= NFP_FL_LW_SIZ;
 nfp_flow->meta.act_len <<= NFP_FL_LW_SIZ;

 nfp_ctrl_tx(app->ctrl, skb);

 return 0;
}
