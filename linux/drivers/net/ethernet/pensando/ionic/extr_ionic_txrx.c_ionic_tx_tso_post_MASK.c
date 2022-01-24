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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u64 ;
typedef  unsigned int u16 ;
struct sk_buff {int /*<<< orphan*/  len; } ;
struct ionic_txq_desc {void* mss; void* hdr_len; void* vlan_tci; void* len; int /*<<< orphan*/  cmd; } ;
struct ionic_queue {int dummy; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  IONIC_TXQ_DESC_FLAG_ENCAP ; 
 int /*<<< orphan*/  IONIC_TXQ_DESC_FLAG_TSO_EOT ; 
 int /*<<< orphan*/  IONIC_TXQ_DESC_FLAG_TSO_SOT ; 
 int /*<<< orphan*/  IONIC_TXQ_DESC_FLAG_VLAN ; 
 int /*<<< orphan*/  IONIC_TXQ_DESC_OPCODE_TSO ; 
 void* FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ionic_tx_clean ; 
 int /*<<< orphan*/  FUNC3 (struct ionic_queue*,int,int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct ionic_queue*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 

__attribute__((used)) static void FUNC8(struct ionic_queue *q, struct ionic_txq_desc *desc,
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

	cmd = FUNC2(IONIC_TXQ_DESC_OPCODE_TSO, flags, nsge, addr);
	desc->cmd = FUNC1(cmd);
	desc->len = FUNC0(len);
	desc->vlan_tci = FUNC0(vlan_tci);
	desc->hdr_len = FUNC0(hdrlen);
	desc->mss = FUNC0(mss);

	if (done) {
		FUNC7(skb);
		FUNC4(FUNC6(q), skb->len);
		FUNC3(q, !FUNC5(), ionic_tx_clean, skb);
	} else {
		FUNC3(q, false, ionic_tx_clean, NULL);
	}
}