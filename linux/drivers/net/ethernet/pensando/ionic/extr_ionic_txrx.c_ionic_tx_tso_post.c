
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef unsigned int u16 ;
struct sk_buff {int len; } ;
struct ionic_txq_desc {void* mss; void* hdr_len; void* vlan_tci; void* len; int cmd; } ;
struct ionic_queue {int dummy; } ;
typedef int dma_addr_t ;


 int IONIC_TXQ_DESC_FLAG_ENCAP ;
 int IONIC_TXQ_DESC_FLAG_TSO_EOT ;
 int IONIC_TXQ_DESC_FLAG_TSO_SOT ;
 int IONIC_TXQ_DESC_FLAG_VLAN ;
 int IONIC_TXQ_DESC_OPCODE_TSO ;
 void* cpu_to_le16 (unsigned int) ;
 int cpu_to_le64 (int ) ;
 int encode_txq_desc_cmd (int ,int ,int ,int ) ;
 int ionic_tx_clean ;
 int ionic_txq_post (struct ionic_queue*,int,int ,struct sk_buff*) ;
 int netdev_tx_sent_queue (int ,int ) ;
 int netdev_xmit_more () ;
 int q_to_ndq (struct ionic_queue*) ;
 int skb_tx_timestamp (struct sk_buff*) ;

__attribute__((used)) static void ionic_tx_tso_post(struct ionic_queue *q, struct ionic_txq_desc *desc,
         struct sk_buff *skb,
         dma_addr_t addr, u8 nsge, u16 len,
         unsigned int hdrlen, unsigned int mss,
         bool outer_csum,
         u16 vlan_tci, bool has_vlan,
         bool start, bool done)
{
 u8 flags = 0;
 u64 cmd;

 flags |= has_vlan ? IONIC_TXQ_DESC_FLAG_VLAN : 0;
 flags |= outer_csum ? IONIC_TXQ_DESC_FLAG_ENCAP : 0;
 flags |= start ? IONIC_TXQ_DESC_FLAG_TSO_SOT : 0;
 flags |= done ? IONIC_TXQ_DESC_FLAG_TSO_EOT : 0;

 cmd = encode_txq_desc_cmd(IONIC_TXQ_DESC_OPCODE_TSO, flags, nsge, addr);
 desc->cmd = cpu_to_le64(cmd);
 desc->len = cpu_to_le16(len);
 desc->vlan_tci = cpu_to_le16(vlan_tci);
 desc->hdr_len = cpu_to_le16(hdrlen);
 desc->mss = cpu_to_le16(mss);

 if (done) {
  skb_tx_timestamp(skb);
  netdev_tx_sent_queue(q_to_ndq(q), skb->len);
  ionic_txq_post(q, !netdev_xmit_more(), ionic_tx_clean, skb);
 } else {
  ionic_txq_post(q, 0, ionic_tx_clean, ((void*)0));
 }
}
