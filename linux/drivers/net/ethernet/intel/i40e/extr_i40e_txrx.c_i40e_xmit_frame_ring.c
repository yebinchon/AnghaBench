
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
struct sk_buff {int len; int data; } ;
struct i40e_tx_buffer {int gso_segs; struct sk_buff* skb; int bytecount; } ;
struct TYPE_2__ {int tx_busy; int tx_linearize; } ;
struct i40e_ring {size_t next_to_use; int netdev; struct i40e_tx_buffer* tx_bi; TYPE_1__ tx_stats; } ;
struct i40e_pf {int state; struct sk_buff* ptp_tx_skb; } ;
typedef int netdev_tx_t ;
typedef scalar_t__ __be16 ;


 int ETH_P_IP ;
 int ETH_P_IPV6 ;
 int I40E_TX_DESC_CMD_ICRC ;
 int I40E_TX_DESC_DTYPE_CONTEXT ;
 int I40E_TX_FLAGS_IPV4 ;
 int I40E_TX_FLAGS_IPV6 ;
 int I40E_TX_FLAGS_TSO ;
 int I40E_TX_FLAGS_TSYN ;
 int NETDEV_TX_BUSY ;
 int NETDEV_TX_OK ;
 int __I40E_PTP_TX_IN_PROGRESS ;
 scalar_t__ __skb_linearize (struct sk_buff*) ;
 int clear_bit_unlock (int ,int ) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 scalar_t__ htons (int ) ;
 int i40e_atr (struct i40e_ring*,struct sk_buff*,int) ;
 scalar_t__ i40e_chk_linearize (struct sk_buff*,int) ;
 int i40e_create_tx_ctx (struct i40e_ring*,int ,int,int) ;
 scalar_t__ i40e_maybe_stop_tx (struct i40e_ring*,int) ;
 struct i40e_pf* i40e_netdev_to_pf (int ) ;
 int i40e_trace (int ,struct sk_buff*,struct i40e_ring*) ;
 int i40e_tso (struct i40e_tx_buffer*,int *,int *) ;
 int i40e_tsyn (struct i40e_ring*,struct sk_buff*,int,int *) ;
 int i40e_tx_enable_csum (struct sk_buff*,int*,int*,int*,struct i40e_ring*,int*) ;
 scalar_t__ i40e_tx_map (struct i40e_ring*,struct sk_buff*,struct i40e_tx_buffer*,int,int ,int,int) ;
 scalar_t__ i40e_tx_prepare_vlan_flags (struct sk_buff*,struct i40e_ring*,int*) ;
 int i40e_txd_use_count (int ) ;
 int i40e_xmit_descriptor_count (struct sk_buff*) ;
 int prefetch (int ) ;
 scalar_t__ unlikely (int) ;
 scalar_t__ vlan_get_protocol (struct sk_buff*) ;
 int xmit_frame_ring ;
 int xmit_frame_ring_drop ;

__attribute__((used)) static netdev_tx_t i40e_xmit_frame_ring(struct sk_buff *skb,
     struct i40e_ring *tx_ring)
{
 u64 cd_type_cmd_tso_mss = I40E_TX_DESC_DTYPE_CONTEXT;
 u32 cd_tunneling = 0, cd_l2tag2 = 0;
 struct i40e_tx_buffer *first;
 u32 td_offset = 0;
 u32 tx_flags = 0;
 __be16 protocol;
 u32 td_cmd = 0;
 u8 hdr_len = 0;
 int tso, count;
 int tsyn;


 prefetch(skb->data);

 i40e_trace(xmit_frame_ring, skb, tx_ring);

 count = i40e_xmit_descriptor_count(skb);
 if (i40e_chk_linearize(skb, count)) {
  if (__skb_linearize(skb)) {
   dev_kfree_skb_any(skb);
   return NETDEV_TX_OK;
  }
  count = i40e_txd_use_count(skb->len);
  tx_ring->tx_stats.tx_linearize++;
 }







 if (i40e_maybe_stop_tx(tx_ring, count + 4 + 1)) {
  tx_ring->tx_stats.tx_busy++;
  return NETDEV_TX_BUSY;
 }


 first = &tx_ring->tx_bi[tx_ring->next_to_use];
 first->skb = skb;
 first->bytecount = skb->len;
 first->gso_segs = 1;


 if (i40e_tx_prepare_vlan_flags(skb, tx_ring, &tx_flags))
  goto out_drop;


 protocol = vlan_get_protocol(skb);


 if (protocol == htons(ETH_P_IP))
  tx_flags |= I40E_TX_FLAGS_IPV4;
 else if (protocol == htons(ETH_P_IPV6))
  tx_flags |= I40E_TX_FLAGS_IPV6;

 tso = i40e_tso(first, &hdr_len, &cd_type_cmd_tso_mss);

 if (tso < 0)
  goto out_drop;
 else if (tso)
  tx_flags |= I40E_TX_FLAGS_TSO;


 tso = i40e_tx_enable_csum(skb, &tx_flags, &td_cmd, &td_offset,
      tx_ring, &cd_tunneling);
 if (tso < 0)
  goto out_drop;

 tsyn = i40e_tsyn(tx_ring, skb, tx_flags, &cd_type_cmd_tso_mss);

 if (tsyn)
  tx_flags |= I40E_TX_FLAGS_TSYN;


 td_cmd |= I40E_TX_DESC_CMD_ICRC;

 i40e_create_tx_ctx(tx_ring, cd_type_cmd_tso_mss,
      cd_tunneling, cd_l2tag2);





 i40e_atr(tx_ring, skb, tx_flags);

 if (i40e_tx_map(tx_ring, skb, first, tx_flags, hdr_len,
   td_cmd, td_offset))
  goto cleanup_tx_tstamp;

 return NETDEV_TX_OK;

out_drop:
 i40e_trace(xmit_frame_ring_drop, first->skb, tx_ring);
 dev_kfree_skb_any(first->skb);
 first->skb = ((void*)0);
cleanup_tx_tstamp:
 if (unlikely(tx_flags & I40E_TX_FLAGS_TSYN)) {
  struct i40e_pf *pf = i40e_netdev_to_pf(tx_ring->netdev);

  dev_kfree_skb_any(pf->ptp_tx_skb);
  pf->ptp_tx_skb = ((void*)0);
  clear_bit_unlock(__I40E_PTP_TX_IN_PROGRESS, pf->state);
 }

 return NETDEV_TX_OK;
}
