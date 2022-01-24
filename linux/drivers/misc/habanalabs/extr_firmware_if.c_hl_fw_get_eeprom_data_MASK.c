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
typedef  int /*<<< orphan*/  u32 ;
struct hl_device {TYPE_1__* asic_funcs; int /*<<< orphan*/  dev; } ;
struct armcp_packet {void* data_max_size; int /*<<< orphan*/  addr; void* ctl; } ;
typedef  int /*<<< orphan*/  pkt ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_2__ {int (* send_cpu_message ) (struct hl_device*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,long*) ;int /*<<< orphan*/  (* cpu_accessible_dma_pool_free ) (struct hl_device*,size_t,void*) ;void* (* cpu_accessible_dma_pool_alloc ) (struct hl_device*,size_t,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 size_t ARMCP_PACKET_EEPROM_DATA_GET ; 
 size_t ARMCP_PKT_CTL_OPCODE_SHIFT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  HL_ARMCP_EEPROM_TIMEOUT_USEC ; 
 void* FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (void*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC5 (size_t,size_t) ; 
 void* FUNC6 (struct hl_device*,size_t,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct hl_device*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,long*) ; 
 int /*<<< orphan*/  FUNC8 (struct hl_device*,size_t,void*) ; 

int FUNC9(struct hl_device *hdev, void *data, size_t max_size)
{
	struct armcp_packet pkt = {};
	void *eeprom_info_cpu_addr;
	dma_addr_t eeprom_info_dma_addr;
	long result;
	int rc;

	eeprom_info_cpu_addr =
			hdev->asic_funcs->cpu_accessible_dma_pool_alloc(hdev,
					max_size, &eeprom_info_dma_addr);
	if (!eeprom_info_cpu_addr) {
		FUNC2(hdev->dev,
			"Failed to allocate DMA memory for ArmCP EEPROM packet\n");
		return -ENOMEM;
	}

	FUNC4(eeprom_info_cpu_addr, 0, max_size);

	pkt.ctl = FUNC0(ARMCP_PACKET_EEPROM_DATA_GET <<
				ARMCP_PKT_CTL_OPCODE_SHIFT);
	pkt.addr = FUNC1(eeprom_info_dma_addr);
	pkt.data_max_size = FUNC0(max_size);

	rc = hdev->asic_funcs->send_cpu_message(hdev, (u32 *) &pkt, sizeof(pkt),
			HL_ARMCP_EEPROM_TIMEOUT_USEC, &result);

	if (rc) {
		FUNC2(hdev->dev,
			"Failed to send ArmCP EEPROM packet, error %d\n", rc);
		goto out;
	}

	/* result contains the actual size */
	FUNC3(data, eeprom_info_cpu_addr, FUNC5((size_t)result, max_size));

out:
	hdev->asic_funcs->cpu_accessible_dma_pool_free(hdev, max_size,
			eeprom_info_cpu_addr);

	return rc;
}