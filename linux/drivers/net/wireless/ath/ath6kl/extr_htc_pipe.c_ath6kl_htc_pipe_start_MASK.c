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
struct sk_buff {int dummy; } ;
struct htc_target {int /*<<< orphan*/  htc_flags; } ;
struct htc_setup_comp_ext_msg {int /*<<< orphan*/  msg_id; } ;
struct htc_packet {struct sk_buff* skb; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH6KL_DBG_HTC ; 
 int /*<<< orphan*/  ENDPOINT_0 ; 
 int ENOMEM ; 
 int /*<<< orphan*/  HTC_MSG_SETUP_COMPLETE_EX_ID ; 
 int /*<<< orphan*/  HTC_OP_STATE_SETUP_COMPLETE ; 
 int /*<<< orphan*/  HTC_SERVICE_TX_PACKET_TAG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (struct htc_target*,struct htc_packet*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct htc_packet* FUNC4 (struct htc_target*) ; 
 int /*<<< orphan*/  FUNC5 (struct htc_target*) ; 
 int /*<<< orphan*/  FUNC6 (struct htc_setup_comp_ext_msg*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct htc_packet*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct htc_setup_comp_ext_msg* FUNC8 (struct sk_buff*,int) ; 

__attribute__((used)) static int FUNC9(struct htc_target *target)
{
	struct sk_buff *skb;
	struct htc_setup_comp_ext_msg *setup;
	struct htc_packet *packet;

	FUNC5(target);

	/* allocate a buffer to send */
	packet = FUNC4(target);
	if (packet == NULL) {
		FUNC0(1);
		return -ENOMEM;
	}

	skb = packet->skb;

	/* assemble setup complete message */
	setup = FUNC8(skb, sizeof(*setup));
	FUNC6(setup, 0, sizeof(struct htc_setup_comp_ext_msg));
	setup->msg_id = FUNC3(HTC_MSG_SETUP_COMPLETE_EX_ID);

	FUNC1(ATH6KL_DBG_HTC, "HTC using TX credit flow control\n");

	FUNC7(packet, NULL, (u8 *) setup,
			 sizeof(struct htc_setup_comp_ext_msg),
			 ENDPOINT_0, HTC_SERVICE_TX_PACKET_TAG);

	target->htc_flags |= HTC_OP_STATE_SETUP_COMPLETE;

	return FUNC2(target, packet);
}