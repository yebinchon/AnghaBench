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
struct rain {int /*<<< orphan*/  write_lock; } ;
struct cec_msg {int len; int* msg; } ;
struct cec_adapter {int dummy; } ;
typedef  int /*<<< orphan*/  hex ;
typedef  int /*<<< orphan*/  cmd ;

/* Variables and functions */
 int CEC_MAX_MSG_SIZE ; 
 struct rain* FUNC0 (struct cec_adapter*) ; 
 int FUNC1 (struct cec_msg*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct rain*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,int,...) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int) ; 

__attribute__((used)) static int FUNC7(struct cec_adapter *adap, u8 attempts,
				    u32 signal_free_time, struct cec_msg *msg)
{
	struct rain *rain = FUNC0(adap);
	char cmd[2 * CEC_MAX_MSG_SIZE + 16];
	unsigned int i;
	int err;

	if (msg->len == 1) {
		FUNC5(cmd, sizeof(cmd), "x%x", FUNC1(msg));
	} else {
		char hex[3];

		FUNC5(cmd, sizeof(cmd), "x%x %02x ",
			 FUNC1(msg), msg->msg[1]);
		for (i = 2; i < msg->len; i++) {
			FUNC5(hex, sizeof(hex), "%02x", msg->msg[i]);
			FUNC6(cmd, hex, sizeof(cmd));
		}
	}
	FUNC2(&rain->write_lock);
	err = FUNC4(rain, cmd);
	FUNC3(&rain->write_lock);
	return err;
}