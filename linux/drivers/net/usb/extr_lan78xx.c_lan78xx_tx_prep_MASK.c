#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
typedef  int u16 ;
struct sk_buff {int len; scalar_t__ ip_summed; } ;
struct lan78xx_net {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_2__ {int /*<<< orphan*/  gso_size; } ;

/* Variables and functions */
 scalar_t__ CHECKSUM_PARTIAL ; 
 int TX_CMD_A_FCS_ ; 
 int TX_CMD_A_IPE_ ; 
 int TX_CMD_A_IVTG_ ; 
 int TX_CMD_A_LEN_MASK_ ; 
 int TX_CMD_A_LSO_ ; 
 int TX_CMD_A_TPE_ ; 
 int TX_CMD_B_MSS_MASK_ ; 
 int /*<<< orphan*/  TX_CMD_B_MSS_MIN_ ; 
 int TX_CMD_B_MSS_SHIFT_ ; 
 int TX_CMD_B_VTAG_MASK_ ; 
 int /*<<< orphan*/  TX_OVERHEAD ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 scalar_t__ FUNC1 (struct sk_buff*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,void*) ; 
 scalar_t__ FUNC4 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct sk_buff*) ; 
 void* FUNC6 (struct sk_buff*,int) ; 
 TYPE_1__* FUNC7 (struct sk_buff*) ; 
 int FUNC8 (struct sk_buff*) ; 
 scalar_t__ FUNC9 (struct sk_buff*) ; 

__attribute__((used)) static struct sk_buff *FUNC10(struct lan78xx_net *dev,
				       struct sk_buff *skb, gfp_t flags)
{
	u32 tx_cmd_a, tx_cmd_b;
	void *ptr;

	if (FUNC4(skb, TX_OVERHEAD)) {
		FUNC0(skb);
		return NULL;
	}

	if (FUNC1(skb) < 0)
		return NULL;

	tx_cmd_a = (u32)(skb->len & TX_CMD_A_LEN_MASK_) | TX_CMD_A_FCS_;

	if (skb->ip_summed == CHECKSUM_PARTIAL)
		tx_cmd_a |= TX_CMD_A_IPE_ | TX_CMD_A_TPE_;

	tx_cmd_b = 0;
	if (FUNC5(skb)) {
		u16 mss = FUNC2(FUNC7(skb)->gso_size, TX_CMD_B_MSS_MIN_);

		tx_cmd_b = (mss << TX_CMD_B_MSS_SHIFT_) & TX_CMD_B_MSS_MASK_;

		tx_cmd_a |= TX_CMD_A_LSO_;
	}

	if (FUNC9(skb)) {
		tx_cmd_a |= TX_CMD_A_IVTG_;
		tx_cmd_b |= FUNC8(skb) & TX_CMD_B_VTAG_MASK_;
	}

	ptr = FUNC6(skb, 8);
	FUNC3(tx_cmd_a, ptr);
	FUNC3(tx_cmd_b, ptr + 4);

	return skb;
}