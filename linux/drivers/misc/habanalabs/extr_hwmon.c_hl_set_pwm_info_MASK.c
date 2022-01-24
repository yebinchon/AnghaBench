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
typedef  int u32 ;
struct hl_device {int /*<<< orphan*/  dev; TYPE_1__* asic_funcs; } ;
struct armcp_packet {int /*<<< orphan*/  value; void* type; void* sensor_index; int /*<<< orphan*/  ctl; } ;
typedef  int /*<<< orphan*/  pkt ;
struct TYPE_2__ {int (* send_cpu_message ) (struct hl_device*,int*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int ARMCP_PACKET_PWM_SET ; 
 int ARMCP_PKT_CTL_OPCODE_SHIFT ; 
 int /*<<< orphan*/  SENSORS_PKT_TIMEOUT ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct armcp_packet*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct hl_device*,int*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC6(struct hl_device *hdev, int sensor_index, u32 attr,
			long value)
{
	struct armcp_packet pkt;
	int rc;

	FUNC4(&pkt, 0, sizeof(pkt));

	pkt.ctl = FUNC1(ARMCP_PACKET_PWM_SET <<
				ARMCP_PKT_CTL_OPCODE_SHIFT);
	pkt.sensor_index = FUNC0(sensor_index);
	pkt.type = FUNC0(attr);
	pkt.value = FUNC2(value);

	rc = hdev->asic_funcs->send_cpu_message(hdev, (u32 *) &pkt, sizeof(pkt),
					SENSORS_PKT_TIMEOUT, NULL);

	if (rc)
		FUNC3(hdev->dev,
			"Failed to set pwm info to sensor %d, error %d\n",
			sensor_index, rc);
}