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
typedef  void* u8 ;
struct ican3_msg {int* data; void* len; int /*<<< orphan*/  spec; } ;
struct ican3_dev {scalar_t__ fwtype; } ;
typedef  int /*<<< orphan*/  msg ;

/* Variables and functions */
 int ENOTSUPP ; 
 scalar_t__ ICAN3_FWTYPE_CAL_CANOPEN ; 
 scalar_t__ ICAN3_FWTYPE_ICANOS ; 
 int LMTS_CAN_CONF_REQ ; 
 int /*<<< orphan*/  MSG_CCONFREQ ; 
 int /*<<< orphan*/  MSG_LMTS ; 
 void* FUNC0 (int) ; 
 int FUNC1 (struct ican3_dev*,struct ican3_msg*) ; 
 int /*<<< orphan*/  FUNC2 (struct ican3_msg*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct ican3_dev *mod, u8 quota)
{
	struct ican3_msg msg;

	if (mod->fwtype == ICAN3_FWTYPE_ICANOS) {
		FUNC2(&msg, 0, sizeof(msg));
		msg.spec = MSG_CCONFREQ;
		msg.len = FUNC0(2);
		msg.data[0] = 0x00;
		msg.data[1] = quota;
	} else if (mod->fwtype == ICAN3_FWTYPE_CAL_CANOPEN) {
		FUNC2(&msg, 0, sizeof(msg));
		msg.spec = MSG_LMTS;
		msg.len = FUNC0(4);
		msg.data[0] = LMTS_CAN_CONF_REQ;
		msg.data[1] = 0x00;
		msg.data[2] = 0x00;
		msg.data[3] = quota;
	} else {
		return -ENOTSUPP;
	}
	return FUNC1(mod, &msg);
}