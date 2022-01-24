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
struct ipaq_micro_msg {int rx_len; int /*<<< orphan*/  rx_data; int /*<<< orphan*/  id; } ;
struct ipaq_micro {char* version; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_VERSION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ipaq_micro*,struct ipaq_micro_msg*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct ipaq_micro *micro)
{
	struct ipaq_micro_msg msg = {
		.id = MSG_VERSION,
	};

	FUNC1(micro, &msg);
	if (msg.rx_len == 4) {
		FUNC2(micro->version, msg.rx_data, 4);
		micro->version[4] = '\0';
	} else if (msg.rx_len == 9) {
		FUNC2(micro->version, msg.rx_data, 4);
		micro->version[4] = '\0';
		/* Bytes 4-7 are "pack", byte 8 is "boot type" */
	} else {
		FUNC0(micro->dev,
			"illegal version message %d bytes\n", msg.rx_len);
	}
}