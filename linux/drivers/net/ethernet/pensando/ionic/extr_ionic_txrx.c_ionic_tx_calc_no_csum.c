
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
struct sk_buff {int encapsulation; int data; } ;
struct ionic_txq_desc {void* vlan_tci; void* len; int cmd; } ;
struct ionic_tx_stats {int no_csum; } ;
struct ionic_queue {TYPE_3__* lif; TYPE_1__* head; } ;
struct device {int dummy; } ;
typedef int dma_addr_t ;
struct TYPE_8__ {int nr_frags; } ;
struct TYPE_7__ {TYPE_2__* ionic; } ;
struct TYPE_6__ {struct device* dev; } ;
struct TYPE_5__ {struct ionic_txq_desc* desc; } ;


 int ENOMEM ;
 int IONIC_TXQ_DESC_FLAG_ENCAP ;
 int IONIC_TXQ_DESC_FLAG_VLAN ;
 int IONIC_TXQ_DESC_OPCODE_CSUM_NONE ;
 void* cpu_to_le16 (int ) ;
 int cpu_to_le64 (int ) ;
 scalar_t__ dma_mapping_error (struct device*,int ) ;
 int encode_txq_desc_cmd (int ,int ,int ,int ) ;
 int ionic_tx_map_single (struct ionic_queue*,int ,int ) ;
 struct ionic_tx_stats* q_to_tx_stats (struct ionic_queue*) ;
 int skb_headlen (struct sk_buff*) ;
 TYPE_4__* skb_shinfo (struct sk_buff*) ;
 int skb_vlan_tag_get (struct sk_buff*) ;
 int skb_vlan_tag_present (struct sk_buff*) ;

__attribute__((used)) static int ionic_tx_calc_no_csum(struct ionic_queue *q, struct sk_buff *skb)
{
 struct ionic_tx_stats *stats = q_to_tx_stats(q);
 struct ionic_txq_desc *desc = q->head->desc;
 struct device *dev = q->lif->ionic->dev;
 dma_addr_t dma_addr;
 bool has_vlan;
 u8 flags = 0;
 bool encap;
 u64 cmd;

 has_vlan = !!skb_vlan_tag_present(skb);
 encap = skb->encapsulation;

 dma_addr = ionic_tx_map_single(q, skb->data, skb_headlen(skb));
 if (dma_mapping_error(dev, dma_addr))
  return -ENOMEM;

 flags |= has_vlan ? IONIC_TXQ_DESC_FLAG_VLAN : 0;
 flags |= encap ? IONIC_TXQ_DESC_FLAG_ENCAP : 0;

 cmd = encode_txq_desc_cmd(IONIC_TXQ_DESC_OPCODE_CSUM_NONE,
      flags, skb_shinfo(skb)->nr_frags, dma_addr);
 desc->cmd = cpu_to_le64(cmd);
 desc->len = cpu_to_le16(skb_headlen(skb));
 desc->vlan_tci = cpu_to_le16(skb_vlan_tag_get(skb));

 stats->no_csum++;

 return 0;
}
