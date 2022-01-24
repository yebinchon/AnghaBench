#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ u8 ;
typedef  scalar_t__ u16 ;
typedef  int /*<<< orphan*/  tx_pkt ;
struct qed_ooo_buffer {int /*<<< orphan*/  packet_length; int /*<<< orphan*/  vlan; scalar_t__ placement_offset; scalar_t__ rx_buffer_phys_addr; } ;
struct qed_ll2_tx_pkt_info {int num_of_bds; struct qed_ooo_buffer* cookie; int /*<<< orphan*/  first_frag_len; scalar_t__ first_frag; int /*<<< orphan*/  tx_dest; scalar_t__ l4_hdr_offset_w; scalar_t__ bd_flags; int /*<<< orphan*/  vlan; } ;
struct qed_ll2_info {int tx_dest; int /*<<< orphan*/  my_id; } ;
struct qed_hwfn {int /*<<< orphan*/  p_ooo_info; } ;
typedef  scalar_t__ dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  CORE_TX_BD_DATA_FORCE_VLAN_MODE ; 
 int /*<<< orphan*/  CORE_TX_BD_DATA_L4_PROTOCOL ; 
#define  CORE_TX_DEST_DROP 130 
#define  CORE_TX_DEST_LB 129 
#define  CORE_TX_DEST_NW 128 
 int /*<<< orphan*/  QED_LL2_TX_DEST_DROP ; 
 int /*<<< orphan*/  QED_LL2_TX_DEST_LB ; 
 int /*<<< orphan*/  QED_LL2_TX_DEST_NW ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct qed_ll2_tx_pkt_info*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct qed_hwfn*,int /*<<< orphan*/ ,struct qed_ll2_tx_pkt_info*,int) ; 
 struct qed_ooo_buffer* FUNC3 (struct qed_hwfn*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct qed_hwfn*,int /*<<< orphan*/ ,struct qed_ooo_buffer*,int) ; 

__attribute__((used)) static void
FUNC5(struct qed_hwfn *p_hwfn,
			  struct qed_ll2_info *p_ll2_conn)
{
	struct qed_ll2_tx_pkt_info tx_pkt;
	struct qed_ooo_buffer *p_buffer;
	u16 l4_hdr_offset_w;
	dma_addr_t first_frag;
	u8 bd_flags;
	int rc;

	/* Submit Tx buffers here */
	while ((p_buffer = FUNC3(p_hwfn,
						    p_hwfn->p_ooo_info))) {
		l4_hdr_offset_w = 0;
		bd_flags = 0;

		first_frag = p_buffer->rx_buffer_phys_addr +
			     p_buffer->placement_offset;
		FUNC0(bd_flags, CORE_TX_BD_DATA_FORCE_VLAN_MODE, 1);
		FUNC0(bd_flags, CORE_TX_BD_DATA_L4_PROTOCOL, 1);

		FUNC1(&tx_pkt, 0, sizeof(tx_pkt));
		tx_pkt.num_of_bds = 1;
		tx_pkt.vlan = p_buffer->vlan;
		tx_pkt.bd_flags = bd_flags;
		tx_pkt.l4_hdr_offset_w = l4_hdr_offset_w;
		switch (p_ll2_conn->tx_dest) {
		case CORE_TX_DEST_NW:
			tx_pkt.tx_dest = QED_LL2_TX_DEST_NW;
			break;
		case CORE_TX_DEST_LB:
			tx_pkt.tx_dest = QED_LL2_TX_DEST_LB;
			break;
		case CORE_TX_DEST_DROP:
		default:
			tx_pkt.tx_dest = QED_LL2_TX_DEST_DROP;
			break;
		}
		tx_pkt.first_frag = first_frag;
		tx_pkt.first_frag_len = p_buffer->packet_length;
		tx_pkt.cookie = p_buffer;

		rc = FUNC2(p_hwfn, p_ll2_conn->my_id,
					       &tx_pkt, true);
		if (rc) {
			FUNC4(p_hwfn, p_hwfn->p_ooo_info,
						 p_buffer, false);
			break;
		}
	}
}