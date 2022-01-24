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
struct htc_target {int /*<<< orphan*/ * endpoint; } ;
struct htc_packet {scalar_t__ endpoint; scalar_t__ act_len; scalar_t__ buf; int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH6KL_DBG_HTC ; 
 int /*<<< orphan*/  ECANCELED ; 
 scalar_t__ ENDPOINT_0 ; 
 scalar_t__ HTC_HDR_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct htc_target*,struct htc_packet*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct htc_target*,struct htc_packet*) ; 

__attribute__((used)) static void FUNC5(struct htc_target *context, struct htc_packet *packets)
{
	if (packets->endpoint != ENDPOINT_0) {
		FUNC0(1);
		return;
	}

	if (packets->status == -ECANCELED) {
		FUNC4(context, packets);
		return;
	}

	if (packets->act_len > 0) {
		FUNC2("htc_ctrl_rx, got message with len:%zu\n",
			   packets->act_len + HTC_HDR_LENGTH);

		FUNC1(ATH6KL_DBG_HTC,
				"htc rx unexpected endpoint 0 message", "",
				packets->buf - HTC_HDR_LENGTH,
				packets->act_len + HTC_HDR_LENGTH);
	}

	FUNC3(context, packets, &context->endpoint[0]);
}