
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int dummy; } ;
struct htc_target {int htc_flags; } ;
struct htc_setup_comp_ext_msg {int msg_id; } ;
struct htc_packet {struct sk_buff* skb; } ;


 int ATH6KL_DBG_HTC ;
 int ENDPOINT_0 ;
 int ENOMEM ;
 int HTC_MSG_SETUP_COMPLETE_EX_ID ;
 int HTC_OP_STATE_SETUP_COMPLETE ;
 int HTC_SERVICE_TX_PACKET_TAG ;
 int WARN_ON_ONCE (int) ;
 int ath6kl_dbg (int ,char*) ;
 int ath6kl_htc_pipe_tx (struct htc_target*,struct htc_packet*) ;
 int cpu_to_le16 (int ) ;
 struct htc_packet* htc_alloc_txctrl_packet (struct htc_target*) ;
 int htc_config_target_hif_pipe (struct htc_target*) ;
 int memset (struct htc_setup_comp_ext_msg*,int ,int) ;
 int set_htc_pkt_info (struct htc_packet*,int *,int *,int,int ,int ) ;
 struct htc_setup_comp_ext_msg* skb_put (struct sk_buff*,int) ;

__attribute__((used)) static int ath6kl_htc_pipe_start(struct htc_target *target)
{
 struct sk_buff *skb;
 struct htc_setup_comp_ext_msg *setup;
 struct htc_packet *packet;

 htc_config_target_hif_pipe(target);


 packet = htc_alloc_txctrl_packet(target);
 if (packet == ((void*)0)) {
  WARN_ON_ONCE(1);
  return -ENOMEM;
 }

 skb = packet->skb;


 setup = skb_put(skb, sizeof(*setup));
 memset(setup, 0, sizeof(struct htc_setup_comp_ext_msg));
 setup->msg_id = cpu_to_le16(HTC_MSG_SETUP_COMPLETE_EX_ID);

 ath6kl_dbg(ATH6KL_DBG_HTC, "HTC using TX credit flow control\n");

 set_htc_pkt_info(packet, ((void*)0), (u8 *) setup,
    sizeof(struct htc_setup_comp_ext_msg),
    ENDPOINT_0, HTC_SERVICE_TX_PACKET_TAG);

 target->htc_flags |= HTC_OP_STATE_SETUP_COMPLETE;

 return ath6kl_htc_pipe_tx(target, packet);
}
