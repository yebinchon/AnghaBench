
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int dummy; } ;
struct nfp_flower_cmsg_merge_hint {int count; TYPE_1__* flow; } ;
struct nfp_fl_payload {int dummy; } ;
struct nfp_app {int dummy; } ;
struct TYPE_2__ {int host_ctx; } ;


 int ENOMEM ;
 int be32_to_cpu (int ) ;
 int flow ;
 struct nfp_flower_cmsg_merge_hint* nfp_flower_cmsg_get_data (struct sk_buff*) ;
 unsigned int nfp_flower_cmsg_get_data_len (struct sk_buff*) ;
 int nfp_flower_cmsg_warn (struct nfp_app*,char*,...) ;
 struct nfp_fl_payload* nfp_flower_get_fl_payload_from_ctx (struct nfp_app*,int ) ;
 int nfp_flower_merge_offloaded_flows (struct nfp_app*,struct nfp_fl_payload*,struct nfp_fl_payload*) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;
 unsigned int struct_size (struct nfp_flower_cmsg_merge_hint*,int ,int) ;

__attribute__((used)) static void
nfp_flower_cmsg_merge_hint_rx(struct nfp_app *app, struct sk_buff *skb)
{
 unsigned int msg_len = nfp_flower_cmsg_get_data_len(skb);
 struct nfp_flower_cmsg_merge_hint *msg;
 struct nfp_fl_payload *sub_flows[2];
 int err, i, flow_cnt;

 msg = nfp_flower_cmsg_get_data(skb);

 flow_cnt = msg->count + 1;

 if (msg_len < struct_size(msg, flow, flow_cnt)) {
  nfp_flower_cmsg_warn(app, "Merge hint ctrl msg too short - %d bytes but expect %zd\n",
         msg_len, struct_size(msg, flow, flow_cnt));
  return;
 }

 if (flow_cnt != 2) {
  nfp_flower_cmsg_warn(app, "Merge hint contains %d flows - two are expected\n",
         flow_cnt);
  return;
 }

 rtnl_lock();
 for (i = 0; i < flow_cnt; i++) {
  u32 ctx = be32_to_cpu(msg->flow[i].host_ctx);

  sub_flows[i] = nfp_flower_get_fl_payload_from_ctx(app, ctx);
  if (!sub_flows[i]) {
   nfp_flower_cmsg_warn(app, "Invalid flow in merge hint\n");
   goto err_rtnl_unlock;
  }
 }

 err = nfp_flower_merge_offloaded_flows(app, sub_flows[0], sub_flows[1]);

 if (err == -ENOMEM)
  nfp_flower_cmsg_warn(app, "Flow merge memory fail.\n");

err_rtnl_unlock:
 rtnl_unlock();
}
