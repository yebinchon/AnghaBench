#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  l2tag1; } ;
struct TYPE_8__ {TYPE_2__ lo_dword; } ;
struct TYPE_6__ {int /*<<< orphan*/  status_error_len; } ;
struct TYPE_9__ {TYPE_3__ qword0; TYPE_1__ qword1; } ;
union i40e_rx_desc {TYPE_4__ wb; } ;
typedef  int u8 ;
typedef  int u64 ;
typedef  int u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct sk_buff {int /*<<< orphan*/  protocol; } ;
struct i40e_ring {int /*<<< orphan*/  netdev; int /*<<< orphan*/  queue_index; TYPE_5__* vsi; } ;
struct TYPE_10__ {int /*<<< orphan*/  back; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ETH_P_8021Q ; 
 int I40E_RXD_QW1_PTYPE_MASK ; 
 int I40E_RXD_QW1_PTYPE_SHIFT ; 
 int I40E_RXD_QW1_STATUS_MASK ; 
 int I40E_RXD_QW1_STATUS_SHIFT ; 
 int I40E_RXD_QW1_STATUS_TSYNINDX_MASK ; 
 int I40E_RXD_QW1_STATUS_TSYNINDX_SHIFT ; 
 int I40E_RXD_QW1_STATUS_TSYNVALID_MASK ; 
 int /*<<< orphan*/  I40E_RX_DESC_STATUS_L2TAG1P_SHIFT ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,struct sk_buff*,union i40e_rx_desc*) ; 
 int /*<<< orphan*/  FUNC6 (struct i40e_ring*,union i40e_rx_desc*,struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int) ; 

void FUNC11(struct i40e_ring *rx_ring,
			     union i40e_rx_desc *rx_desc, struct sk_buff *skb)
{
	u64 qword = FUNC8(rx_desc->wb.qword1.status_error_len);
	u32 rx_status = (qword & I40E_RXD_QW1_STATUS_MASK) >>
			I40E_RXD_QW1_STATUS_SHIFT;
	u32 tsynvalid = rx_status & I40E_RXD_QW1_STATUS_TSYNVALID_MASK;
	u32 tsyn = (rx_status & I40E_RXD_QW1_STATUS_TSYNINDX_MASK) >>
		   I40E_RXD_QW1_STATUS_TSYNINDX_SHIFT;
	u8 rx_ptype = (qword & I40E_RXD_QW1_PTYPE_MASK) >>
		      I40E_RXD_QW1_PTYPE_SHIFT;

	if (FUNC10(tsynvalid))
		FUNC4(rx_ring->vsi->back, skb, tsyn);

	FUNC6(rx_ring, rx_desc, skb, rx_ptype);

	FUNC5(rx_ring->vsi, skb, rx_desc);

	FUNC9(skb, rx_ring->queue_index);

	if (qword & FUNC0(I40E_RX_DESC_STATUS_L2TAG1P_SHIFT)) {
		u16 vlan_tag = rx_desc->wb.qword0.lo_dword.l2tag1;

		FUNC1(skb, FUNC3(ETH_P_8021Q),
				       FUNC7(vlan_tag));
	}

	/* modifies the skb - consumes the enet header */
	skb->protocol = FUNC2(skb, rx_ring->netdev);
}