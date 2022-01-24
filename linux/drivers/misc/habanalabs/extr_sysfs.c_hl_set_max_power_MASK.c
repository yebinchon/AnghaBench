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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct hl_device {int /*<<< orphan*/  dev; TYPE_1__* asic_funcs; } ;
struct armcp_packet {int /*<<< orphan*/  value; int /*<<< orphan*/  ctl; } ;
typedef  int /*<<< orphan*/  pkt ;
struct TYPE_2__ {int (* send_cpu_message ) (struct hl_device*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int ARMCP_PACKET_MAX_POWER_SET ; 
 int ARMCP_PKT_CTL_OPCODE_SHIFT ; 
 int /*<<< orphan*/  SET_PWR_PKT_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct armcp_packet*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct hl_device*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC5(struct hl_device *hdev, u64 value)
{
	struct armcp_packet pkt;
	int rc;

	FUNC3(&pkt, 0, sizeof(pkt));

	pkt.ctl = FUNC0(ARMCP_PACKET_MAX_POWER_SET <<
				ARMCP_PKT_CTL_OPCODE_SHIFT);
	pkt.value = FUNC1(value);

	rc = hdev->asic_funcs->send_cpu_message(hdev, (u32 *) &pkt, sizeof(pkt),
					SET_PWR_PKT_TIMEOUT, NULL);

	if (rc)
		FUNC2(hdev->dev, "Failed to set max power, error %d\n", rc);
}