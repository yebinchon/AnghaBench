#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_4__ {int /*<<< orphan*/  sensors; } ;
struct asic_fixed_properties {TYPE_2__ armcp_info; } ;
struct hl_device {TYPE_1__* asic_funcs; int /*<<< orphan*/  dev; struct asic_fixed_properties asic_prop; } ;
struct armcp_packet {void* data_max_size; int /*<<< orphan*/  addr; void* ctl; } ;
struct armcp_info {int dummy; } ;
typedef  int /*<<< orphan*/  pkt ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_3__ {int (* send_cpu_message ) (struct hl_device*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,long*) ;int /*<<< orphan*/  (* cpu_accessible_dma_pool_free ) (struct hl_device*,int,void*) ;void* (* cpu_accessible_dma_pool_alloc ) (struct hl_device*,int,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int ARMCP_PACKET_INFO_GET ; 
 int ARMCP_PKT_CTL_OPCODE_SHIFT ; 
 int EFAULT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  HL_ARMCP_INFO_TIMEOUT_USEC ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC3 (struct hl_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,void*,int) ; 
 int /*<<< orphan*/  FUNC5 (void*,int /*<<< orphan*/ ,int) ; 
 void* FUNC6 (struct hl_device*,int,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct hl_device*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,long*) ; 
 int /*<<< orphan*/  FUNC8 (struct hl_device*,int,void*) ; 

int FUNC9(struct hl_device *hdev)
{
	struct asic_fixed_properties *prop = &hdev->asic_prop;
	struct armcp_packet pkt = {};
	void *armcp_info_cpu_addr;
	dma_addr_t armcp_info_dma_addr;
	long result;
	int rc;

	armcp_info_cpu_addr =
			hdev->asic_funcs->cpu_accessible_dma_pool_alloc(hdev,
					sizeof(struct armcp_info),
					&armcp_info_dma_addr);
	if (!armcp_info_cpu_addr) {
		FUNC2(hdev->dev,
			"Failed to allocate DMA memory for ArmCP info packet\n");
		return -ENOMEM;
	}

	FUNC5(armcp_info_cpu_addr, 0, sizeof(struct armcp_info));

	pkt.ctl = FUNC0(ARMCP_PACKET_INFO_GET <<
				ARMCP_PKT_CTL_OPCODE_SHIFT);
	pkt.addr = FUNC1(armcp_info_dma_addr);
	pkt.data_max_size = FUNC0(sizeof(struct armcp_info));

	rc = hdev->asic_funcs->send_cpu_message(hdev, (u32 *) &pkt, sizeof(pkt),
					HL_ARMCP_INFO_TIMEOUT_USEC, &result);
	if (rc) {
		FUNC2(hdev->dev,
			"Failed to send ArmCP info pkt, error %d\n", rc);
		goto out;
	}

	FUNC4(&prop->armcp_info, armcp_info_cpu_addr,
			sizeof(prop->armcp_info));

	rc = FUNC3(hdev, prop->armcp_info.sensors);
	if (rc) {
		FUNC2(hdev->dev,
			"Failed to build hwmon channel info, error %d\n", rc);
		rc = -EFAULT;
		goto out;
	}

out:
	hdev->asic_funcs->cpu_accessible_dma_pool_free(hdev,
			sizeof(struct armcp_info), armcp_info_cpu_addr);

	return rc;
}