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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct hl_device {int /*<<< orphan*/  dev; TYPE_1__* asic_funcs; } ;
struct armcp_packet {int /*<<< orphan*/  value; void* led_index; void* ctl; } ;
typedef  int /*<<< orphan*/  pkt ;
struct TYPE_2__ {int (* send_cpu_message ) (struct hl_device*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int ARMCP_PACKET_LED_SET ; 
 int ARMCP_PKT_CTL_OPCODE_SHIFT ; 
 int /*<<< orphan*/  HL_DEVICE_TIMEOUT_USEC ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,int) ; 
 scalar_t__ FUNC3 (struct hl_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct armcp_packet*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct hl_device*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct hl_device *hdev, u8 led, u8 state)
{
	struct armcp_packet pkt;
	int rc;

	if (FUNC3(hdev))
		return;

	FUNC4(&pkt, 0, sizeof(pkt));

	pkt.ctl = FUNC0(ARMCP_PACKET_LED_SET <<
				ARMCP_PKT_CTL_OPCODE_SHIFT);
	pkt.led_index = FUNC0(led);
	pkt.value = FUNC1(state);

	rc = hdev->asic_funcs->send_cpu_message(hdev, (u32 *) &pkt, sizeof(pkt),
						HL_DEVICE_TIMEOUT_USEC, NULL);

	if (rc)
		FUNC2(hdev->dev, "Failed to set LED %d, error %d\n", led, rc);
}