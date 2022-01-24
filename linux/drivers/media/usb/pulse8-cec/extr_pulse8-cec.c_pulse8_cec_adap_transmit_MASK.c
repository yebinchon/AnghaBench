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
typedef  int /*<<< orphan*/  u32 ;
struct pulse8 {int dummy; } ;
struct cec_msg {int len; int /*<<< orphan*/ * msg; } ;
struct cec_adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSGCODE_COMMAND_ACCEPTED ; 
 int /*<<< orphan*/  MSGCODE_TRANSMIT ; 
 int /*<<< orphan*/  MSGCODE_TRANSMIT_ACK_POLARITY ; 
 int /*<<< orphan*/  MSGCODE_TRANSMIT_EOM ; 
 int /*<<< orphan*/  MSGCODE_TRANSMIT_IDLETIME ; 
 struct pulse8* FUNC0 (struct cec_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct cec_msg*) ; 
 int FUNC2 (struct pulse8*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct cec_adapter *adap, u8 attempts,
				    u32 signal_free_time, struct cec_msg *msg)
{
	struct pulse8 *pulse8 = FUNC0(adap);
	u8 cmd[2];
	unsigned int i;
	int err;

	cmd[0] = MSGCODE_TRANSMIT_IDLETIME;
	cmd[1] = signal_free_time;
	err = FUNC2(pulse8, cmd, 2,
				   MSGCODE_COMMAND_ACCEPTED, 1);
	cmd[0] = MSGCODE_TRANSMIT_ACK_POLARITY;
	cmd[1] = FUNC1(msg);
	if (!err)
		err = FUNC2(pulse8, cmd, 2,
					   MSGCODE_COMMAND_ACCEPTED, 1);
	cmd[0] = msg->len == 1 ? MSGCODE_TRANSMIT_EOM : MSGCODE_TRANSMIT;
	cmd[1] = msg->msg[0];
	if (!err)
		err = FUNC2(pulse8, cmd, 2,
					   MSGCODE_COMMAND_ACCEPTED, 1);
	if (!err && msg->len > 1) {
		cmd[0] = msg->len == 2 ? MSGCODE_TRANSMIT_EOM :
					 MSGCODE_TRANSMIT;
		cmd[1] = msg->msg[1];
		err = FUNC2(pulse8, cmd, 2,
					   MSGCODE_COMMAND_ACCEPTED, 1);
		for (i = 0; !err && i + 2 < msg->len; i++) {
			cmd[0] = (i + 2 == msg->len - 1) ?
				MSGCODE_TRANSMIT_EOM : MSGCODE_TRANSMIT;
			cmd[1] = msg->msg[i + 2];
			err = FUNC2(pulse8, cmd, 2,
						   MSGCODE_COMMAND_ACCEPTED, 1);
		}
	}

	return err;
}