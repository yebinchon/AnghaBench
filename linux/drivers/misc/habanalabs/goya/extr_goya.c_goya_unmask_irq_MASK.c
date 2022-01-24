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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct hl_device {int /*<<< orphan*/  dev; } ;
struct armcp_packet {int /*<<< orphan*/  value; int /*<<< orphan*/  ctl; } ;
typedef  int /*<<< orphan*/  pkt ;

/* Variables and functions */
 int ARMCP_PACKET_UNMASK_RAZWI_IRQ ; 
 int ARMCP_PKT_CTL_OPCODE_SHIFT ; 
 int /*<<< orphan*/  HL_DEVICE_TIMEOUT_USEC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct hl_device*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,long*) ; 
 int /*<<< orphan*/  FUNC4 (struct armcp_packet*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct hl_device *hdev, u16 event_type)
{
	struct armcp_packet pkt;
	long result;
	int rc;

	FUNC4(&pkt, 0, sizeof(pkt));

	pkt.ctl = FUNC0(ARMCP_PACKET_UNMASK_RAZWI_IRQ <<
				ARMCP_PKT_CTL_OPCODE_SHIFT);
	pkt.value = FUNC1(event_type);

	rc = FUNC3(hdev, (u32 *) &pkt, sizeof(pkt),
			HL_DEVICE_TIMEOUT_USEC, &result);

	if (rc)
		FUNC2(hdev->dev, "failed to unmask RAZWI IRQ %d", event_type);

	return rc;
}