#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sk_buff_head {int dummy; } ;
struct sk_buff {scalar_t__ data; } ;
struct TYPE_3__ {int info0; } ;
struct TYPE_4__ {TYPE_1__ common; } ;
struct htt_rx_desc {TYPE_2__ msdu_end; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EINVAL ; 
 int ENOBUFS ; 
 int /*<<< orphan*/  RX_MSDU_END_INFO0_LAST_MSDU ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC2 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff_head*,struct sk_buff*) ; 
 struct sk_buff* FUNC4 (struct sk_buff_head*) ; 
 scalar_t__ FUNC5 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff_head*,struct sk_buff_head*) ; 

__attribute__((used)) static int FUNC7(struct sk_buff_head *list,
				       struct sk_buff_head *amsdu)
{
	struct sk_buff *msdu;
	struct htt_rx_desc *rxd;

	if (FUNC5(list))
		return -ENOBUFS;

	if (FUNC0(!FUNC5(amsdu)))
		return -EINVAL;

	while ((msdu = FUNC2(list))) {
		FUNC3(amsdu, msdu);

		rxd = (void *)msdu->data - sizeof(*rxd);
		if (rxd->msdu_end.common.info0 &
		    FUNC1(RX_MSDU_END_INFO0_LAST_MSDU))
			break;
	}

	msdu = FUNC4(amsdu);
	rxd = (void *)msdu->data - sizeof(*rxd);
	if (!(rxd->msdu_end.common.info0 &
	      FUNC1(RX_MSDU_END_INFO0_LAST_MSDU))) {
		FUNC6(amsdu, list);
		return -EAGAIN;
	}

	return 0;
}