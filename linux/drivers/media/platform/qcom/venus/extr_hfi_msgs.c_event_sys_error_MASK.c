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
typedef  int /*<<< orphan*/  u32 ;
struct venus_core {TYPE_2__* core_ops; int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  session_id; } ;
struct hfi_msg_event_notify_pkt {int /*<<< orphan*/  event_data2; int /*<<< orphan*/  event_data1; TYPE_1__ shdr; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* event_notify ) (struct venus_core*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct venus_core*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct venus_core *core, u32 event,
			    struct hfi_msg_event_notify_pkt *pkt)
{
	if (pkt)
		FUNC0(core->dev,
			"sys error (session id:%x, data1:%x, data2:%x)\n",
			pkt->shdr.session_id, pkt->event_data1,
			pkt->event_data2);

	core->core_ops->event_notify(core, event);
}