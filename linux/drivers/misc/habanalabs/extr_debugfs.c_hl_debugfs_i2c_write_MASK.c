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
typedef  void* u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct hl_device {int /*<<< orphan*/  dev; TYPE_1__* asic_funcs; } ;
struct armcp_packet {int /*<<< orphan*/  value; void* i2c_reg; void* i2c_addr; void* i2c_bus; int /*<<< orphan*/  ctl; } ;
typedef  int /*<<< orphan*/  pkt ;
struct TYPE_2__ {int (* send_cpu_message ) (struct hl_device*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int ARMCP_PACKET_I2C_WR ; 
 int ARMCP_PKT_CTL_OPCODE_SHIFT ; 
 int EBUSY ; 
 int /*<<< orphan*/  HL_DEVICE_TIMEOUT_USEC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC3 (struct hl_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct armcp_packet*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct hl_device*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct hl_device *hdev, u8 i2c_bus, u8 i2c_addr,
				u8 i2c_reg, u32 val)
{
	struct armcp_packet pkt;
	int rc;

	if (FUNC3(hdev))
		return -EBUSY;

	FUNC4(&pkt, 0, sizeof(pkt));

	pkt.ctl = FUNC0(ARMCP_PACKET_I2C_WR <<
				ARMCP_PKT_CTL_OPCODE_SHIFT);
	pkt.i2c_bus = i2c_bus;
	pkt.i2c_addr = i2c_addr;
	pkt.i2c_reg = i2c_reg;
	pkt.value = FUNC1(val);

	rc = hdev->asic_funcs->send_cpu_message(hdev, (u32 *) &pkt, sizeof(pkt),
					HL_DEVICE_TIMEOUT_USEC, NULL);

	if (rc)
		FUNC2(hdev->dev, "Failed to write to I2C, error %d\n", rc);

	return rc;
}