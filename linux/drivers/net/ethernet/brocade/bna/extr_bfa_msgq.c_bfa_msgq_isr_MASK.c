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
struct TYPE_2__ {int msg_id; } ;
struct bfi_mbmsg {TYPE_1__ mh; } ;
struct bfa_msgq {int /*<<< orphan*/  cmdq; int /*<<< orphan*/  rspq; } ;

/* Variables and functions */
#define  BFI_MSGQ_I2H_CMDQ_COPY_REQ 131 
#define  BFI_MSGQ_I2H_DOORBELL_CI 130 
#define  BFI_MSGQ_I2H_DOORBELL_PI 129 
#define  BFI_MSGQ_I2H_INIT_RSP 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct bfi_mbmsg*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct bfi_mbmsg*) ; 
 int /*<<< orphan*/  FUNC3 (struct bfa_msgq*,struct bfi_mbmsg*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct bfi_mbmsg*) ; 

__attribute__((used)) static void
FUNC5(void *cbarg, struct bfi_mbmsg *msg)
{
	struct bfa_msgq *msgq = (struct bfa_msgq *)cbarg;

	switch (msg->mh.msg_id) {
	case BFI_MSGQ_I2H_INIT_RSP:
		FUNC3(msgq, msg);
		break;

	case BFI_MSGQ_I2H_DOORBELL_PI:
		FUNC4(&msgq->rspq, msg);
		break;

	case BFI_MSGQ_I2H_DOORBELL_CI:
		FUNC1(&msgq->cmdq, msg);
		break;

	case BFI_MSGQ_I2H_CMDQ_COPY_REQ:
		FUNC2(&msgq->cmdq, msg);
		break;

	default:
		FUNC0(1);
	}
}