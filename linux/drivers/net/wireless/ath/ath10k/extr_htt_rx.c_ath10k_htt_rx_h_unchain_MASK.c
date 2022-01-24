#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sk_buff_head {int dummy; } ;
struct sk_buff {scalar_t__ data; } ;
struct TYPE_4__ {scalar_t__ ring2_more_count; } ;
struct TYPE_6__ {int /*<<< orphan*/  info1; } ;
struct TYPE_5__ {TYPE_3__ common; } ;
struct htt_rx_desc {TYPE_1__ frag_info; TYPE_2__ msdu_start; } ;
struct ath10k {int dummy; } ;
typedef  enum rx_msdu_decap_format { ____Placeholder_rx_msdu_decap_format } rx_msdu_decap_format ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int RX_MSDU_DECAP_RAW ; 
 int /*<<< orphan*/  RX_MSDU_START_INFO1_DECAP_FORMAT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff_head*,unsigned long*) ; 
 struct sk_buff* FUNC4 (struct sk_buff_head*) ; 
 scalar_t__ FUNC5 (struct sk_buff_head*) ; 

__attribute__((used)) static void FUNC6(struct ath10k *ar,
				    struct sk_buff_head *amsdu,
				    unsigned long *drop_cnt,
				    unsigned long *unchain_cnt)
{
	struct sk_buff *first;
	struct htt_rx_desc *rxd;
	enum rx_msdu_decap_format decap;

	first = FUNC4(amsdu);
	rxd = (void *)first->data - sizeof(*rxd);
	decap = FUNC0(FUNC1(rxd->msdu_start.common.info1),
		   RX_MSDU_START_INFO1_DECAP_FORMAT);

	/* FIXME: Current unchaining logic can only handle simple case of raw
	 * msdu chaining. If decapping is other than raw the chaining may be
	 * more complex and this isn't handled by the current code. Don't even
	 * try re-constructing such frames - it'll be pretty much garbage.
	 */
	if (decap != RX_MSDU_DECAP_RAW ||
	    FUNC5(amsdu) != 1 + rxd->frag_info.ring2_more_count) {
		*drop_cnt += FUNC5(amsdu);
		FUNC2(amsdu);
		return;
	}

	FUNC3(amsdu, unchain_cnt);
}