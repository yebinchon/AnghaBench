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
typedef  int u8 ;
struct ipaq_micro_msg {int* tx_data; int tx_len; int /*<<< orphan*/  rx_data; int /*<<< orphan*/  id; } ;
struct ipaq_micro {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_EEPROM_READ ; 
 int /*<<< orphan*/  FUNC0 (struct ipaq_micro*,struct ipaq_micro_msg*) ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct ipaq_micro *micro,
				   u8 address, u8 len, u8 *data)
{
	struct ipaq_micro_msg msg = {
		.id = MSG_EEPROM_READ,
	};
	u8 i;

	for (i = 0; i < len; i++) {
		msg.tx_data[0] = address + i;
		msg.tx_data[1] = 1;
		msg.tx_len = 2;
		FUNC0(micro, &msg);
		FUNC1(data + (i * 2), msg.rx_data, 2);
	}
}