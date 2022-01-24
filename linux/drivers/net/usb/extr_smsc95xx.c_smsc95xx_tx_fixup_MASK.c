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
struct usbnet {int dummy; } ;
struct sk_buff {scalar_t__ ip_summed; scalar_t__ csum_offset; scalar_t__ data; scalar_t__ len; } ;
typedef  int /*<<< orphan*/  gfp_t ;
typedef  int /*<<< orphan*/  __wsum ;
typedef  int /*<<< orphan*/  __sum16 ;
struct TYPE_2__ {int /*<<< orphan*/  nr_frags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ CHECKSUM_PARTIAL ; 
 int SMSC95XX_TX_OVERHEAD ; 
 int SMSC95XX_TX_OVERHEAD_CSUM ; 
 int TX_CMD_A_FIRST_SEG_ ; 
 int TX_CMD_A_LAST_SEG_ ; 
 int TX_CMD_B_CSUM_ENABLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int,void*) ; 
 long FUNC5 (struct sk_buff*) ; 
 scalar_t__ FUNC6 (struct sk_buff*,int) ; 
 void* FUNC7 (struct sk_buff*,int) ; 
 TYPE_1__* FUNC8 (struct sk_buff*) ; 
 int FUNC9 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*) ; 

__attribute__((used)) static struct sk_buff *FUNC11(struct usbnet *dev,
					 struct sk_buff *skb, gfp_t flags)
{
	bool csum = skb->ip_summed == CHECKSUM_PARTIAL;
	int overhead = csum ? SMSC95XX_TX_OVERHEAD_CSUM : SMSC95XX_TX_OVERHEAD;
	u32 tx_cmd_a, tx_cmd_b;
	void *ptr;

	/* We do not advertise SG, so skbs should be already linearized */
	FUNC0(FUNC8(skb)->nr_frags);

	/* Make writable and expand header space by overhead if required */
	if (FUNC6(skb, overhead)) {
		/* Must deallocate here as returning NULL to indicate error
		 * means the skb won't be deallocated in the caller.
		 */
		FUNC3(skb);
		return NULL;
	}

	tx_cmd_b = (u32)skb->len;
	tx_cmd_a = tx_cmd_b | TX_CMD_A_FIRST_SEG_ | TX_CMD_A_LAST_SEG_;

	if (csum) {
		if (!FUNC10(skb)) {
			/* workaround - hardware tx checksum does not work
			 * properly with extremely small packets */
			long csstart = FUNC5(skb);
			__wsum calc = FUNC2(skb->data + csstart,
				skb->len - csstart, 0);
			*((__sum16 *)(skb->data + csstart
				+ skb->csum_offset)) = FUNC1(calc);

			csum = false;
		} else {
			u32 csum_preamble = FUNC9(skb);
			ptr = FUNC7(skb, 4);
			FUNC4(csum_preamble, ptr);

			tx_cmd_a += 4;
			tx_cmd_b += 4;
			tx_cmd_b |= TX_CMD_B_CSUM_ENABLE;
		}
	}

	ptr = FUNC7(skb, 8);
	FUNC4(tx_cmd_a, ptr);
	FUNC4(tx_cmd_b, ptr+4);

	return skb;
}