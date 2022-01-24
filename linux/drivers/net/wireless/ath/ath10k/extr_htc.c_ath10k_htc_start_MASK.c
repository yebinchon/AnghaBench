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
struct sk_buff {scalar_t__ data; int /*<<< orphan*/  len; } ;
struct TYPE_6__ {int /*<<< orphan*/  max_msgs_per_bundled_recv; int /*<<< orphan*/  flags; } ;
struct TYPE_4__ {int /*<<< orphan*/  message_id; } ;
struct ath10k_htc_msg {TYPE_3__ setup_complete_ext; TYPE_1__ hdr; } ;
struct ath10k_htc {int /*<<< orphan*/  max_msgs_per_htc_bundle; struct ath10k* ar; } ;
struct TYPE_5__ {scalar_t__ bus; } ;
struct ath10k {TYPE_2__ hif; } ;

/* Variables and functions */
 scalar_t__ ATH10K_BUS_SDIO ; 
 int /*<<< orphan*/  ATH10K_DBG_HTC ; 
 int /*<<< orphan*/  ATH10K_HTC_EP_0 ; 
 int /*<<< orphan*/  ATH10K_HTC_MSG_SETUP_COMPLETE_EX_ID ; 
 int /*<<< orphan*/  ATH10K_HTC_SETUP_COMPLETE_FLAGS_RX_BNDL_EN ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ath10k*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath10k*,char*,int) ; 
 struct sk_buff* FUNC4 (struct ath10k*) ; 
 int FUNC5 (struct ath10k*) ; 
 scalar_t__ FUNC6 (struct ath10k*) ; 
 int FUNC7 (struct ath10k_htc*,int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,int) ; 

int FUNC11(struct ath10k_htc *htc)
{
	struct ath10k *ar = htc->ar;
	struct sk_buff *skb;
	int status = 0;
	struct ath10k_htc_msg *msg;

	skb = FUNC4(htc->ar);
	if (!skb)
		return -ENOMEM;

	FUNC10(skb, sizeof(msg->hdr) + sizeof(msg->setup_complete_ext));
	FUNC9(skb->data, 0, skb->len);

	msg = (struct ath10k_htc_msg *)skb->data;
	msg->hdr.message_id =
		FUNC0(ATH10K_HTC_MSG_SETUP_COMPLETE_EX_ID);

	if (ar->hif.bus == ATH10K_BUS_SDIO) {
		/* Extra setup params used by SDIO */
		msg->setup_complete_ext.flags =
			FUNC1(ATH10K_HTC_SETUP_COMPLETE_FLAGS_RX_BNDL_EN);
		msg->setup_complete_ext.max_msgs_per_bundled_recv =
			htc->max_msgs_per_htc_bundle;
	}
	FUNC2(ar, ATH10K_DBG_HTC, "HTC is using TX credit flow control\n");

	status = FUNC7(htc, ATH10K_HTC_EP_0, skb);
	if (status) {
		FUNC8(skb);
		return status;
	}

	if (FUNC6(ar)) {
		status = FUNC5(ar);
		if (status) {
			FUNC3(ar, "failed to connect to pktlog: %d\n", status);
			return status;
		}
	}

	return 0;
}