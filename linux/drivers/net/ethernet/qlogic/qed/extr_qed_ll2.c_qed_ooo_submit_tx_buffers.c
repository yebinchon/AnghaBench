
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef scalar_t__ u16 ;
typedef int tx_pkt ;
struct qed_ooo_buffer {int packet_length; int vlan; scalar_t__ placement_offset; scalar_t__ rx_buffer_phys_addr; } ;
struct qed_ll2_tx_pkt_info {int num_of_bds; struct qed_ooo_buffer* cookie; int first_frag_len; scalar_t__ first_frag; int tx_dest; scalar_t__ l4_hdr_offset_w; scalar_t__ bd_flags; int vlan; } ;
struct qed_ll2_info {int tx_dest; int my_id; } ;
struct qed_hwfn {int p_ooo_info; } ;
typedef scalar_t__ dma_addr_t ;


 int CORE_TX_BD_DATA_FORCE_VLAN_MODE ;
 int CORE_TX_BD_DATA_L4_PROTOCOL ;



 int QED_LL2_TX_DEST_DROP ;
 int QED_LL2_TX_DEST_LB ;
 int QED_LL2_TX_DEST_NW ;
 int SET_FIELD (scalar_t__,int ,int) ;
 int memset (struct qed_ll2_tx_pkt_info*,int ,int) ;
 int qed_ll2_prepare_tx_packet (struct qed_hwfn*,int ,struct qed_ll2_tx_pkt_info*,int) ;
 struct qed_ooo_buffer* qed_ooo_get_ready_buffer (struct qed_hwfn*,int ) ;
 int qed_ooo_put_ready_buffer (struct qed_hwfn*,int ,struct qed_ooo_buffer*,int) ;

__attribute__((used)) static void
qed_ooo_submit_tx_buffers(struct qed_hwfn *p_hwfn,
     struct qed_ll2_info *p_ll2_conn)
{
 struct qed_ll2_tx_pkt_info tx_pkt;
 struct qed_ooo_buffer *p_buffer;
 u16 l4_hdr_offset_w;
 dma_addr_t first_frag;
 u8 bd_flags;
 int rc;


 while ((p_buffer = qed_ooo_get_ready_buffer(p_hwfn,
          p_hwfn->p_ooo_info))) {
  l4_hdr_offset_w = 0;
  bd_flags = 0;

  first_frag = p_buffer->rx_buffer_phys_addr +
        p_buffer->placement_offset;
  SET_FIELD(bd_flags, CORE_TX_BD_DATA_FORCE_VLAN_MODE, 1);
  SET_FIELD(bd_flags, CORE_TX_BD_DATA_L4_PROTOCOL, 1);

  memset(&tx_pkt, 0, sizeof(tx_pkt));
  tx_pkt.num_of_bds = 1;
  tx_pkt.vlan = p_buffer->vlan;
  tx_pkt.bd_flags = bd_flags;
  tx_pkt.l4_hdr_offset_w = l4_hdr_offset_w;
  switch (p_ll2_conn->tx_dest) {
  case 128:
   tx_pkt.tx_dest = QED_LL2_TX_DEST_NW;
   break;
  case 129:
   tx_pkt.tx_dest = QED_LL2_TX_DEST_LB;
   break;
  case 130:
  default:
   tx_pkt.tx_dest = QED_LL2_TX_DEST_DROP;
   break;
  }
  tx_pkt.first_frag = first_frag;
  tx_pkt.first_frag_len = p_buffer->packet_length;
  tx_pkt.cookie = p_buffer;

  rc = qed_ll2_prepare_tx_packet(p_hwfn, p_ll2_conn->my_id,
            &tx_pkt, 1);
  if (rc) {
   qed_ooo_put_ready_buffer(p_hwfn, p_hwfn->p_ooo_info,
       p_buffer, 0);
   break;
  }
 }
}
