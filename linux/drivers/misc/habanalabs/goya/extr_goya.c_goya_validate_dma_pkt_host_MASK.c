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
typedef  int u32 ;
struct packet_lin_dma {int /*<<< orphan*/  tsize; int /*<<< orphan*/  src_addr; int /*<<< orphan*/  dst_addr; int /*<<< orphan*/  ctl; } ;
struct TYPE_2__ {int /*<<< orphan*/  dram_end_address; int /*<<< orphan*/  dram_user_base_address; int /*<<< orphan*/  sram_end_address; int /*<<< orphan*/  sram_user_base_address; } ;
struct hl_device {int /*<<< orphan*/  dev; TYPE_1__ asic_prop; } ;
struct hl_cs_parser {int patched_cb_size; scalar_t__ hw_queue_id; } ;
typedef  enum goya_dma_direction { ____Placeholder_goya_dma_direction } goya_dma_direction ;
typedef  enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;

/* Variables and functions */
#define  DMA_DRAM_TO_HOST 131 
 int DMA_FROM_DEVICE ; 
#define  DMA_HOST_TO_DRAM 130 
#define  DMA_HOST_TO_SRAM 129 
#define  DMA_SRAM_TO_HOST 128 
 int DMA_TO_DEVICE ; 
 int EFAULT ; 
 int GOYA_PKT_LIN_DMA_CTL_DMA_DIR_MASK ; 
 int GOYA_PKT_LIN_DMA_CTL_DMA_DIR_SHIFT ; 
 int GOYA_PKT_LIN_DMA_CTL_MEMSET_MASK ; 
 int GOYA_PKT_LIN_DMA_CTL_MEMSET_SHIFT ; 
 scalar_t__ GOYA_QUEUE_ID_DMA_1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC2 (struct hl_device*,struct hl_cs_parser*,struct packet_lin_dma*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct hl_device *hdev,
				struct hl_cs_parser *parser,
				struct packet_lin_dma *user_dma_pkt)
{
	u64 device_memory_addr, addr;
	enum dma_data_direction dir;
	enum goya_dma_direction user_dir;
	bool sram_addr = true;
	bool skip_host_mem_pin = false;
	bool user_memset;
	u32 ctl;
	int rc = 0;

	ctl = FUNC4(user_dma_pkt->ctl);

	user_dir = (ctl & GOYA_PKT_LIN_DMA_CTL_DMA_DIR_MASK) >>
			GOYA_PKT_LIN_DMA_CTL_DMA_DIR_SHIFT;

	user_memset = (ctl & GOYA_PKT_LIN_DMA_CTL_MEMSET_MASK) >>
			GOYA_PKT_LIN_DMA_CTL_MEMSET_SHIFT;

	switch (user_dir) {
	case DMA_HOST_TO_DRAM:
		FUNC0(hdev->dev, "DMA direction is HOST --> DRAM\n");
		dir = DMA_TO_DEVICE;
		sram_addr = false;
		addr = FUNC5(user_dma_pkt->src_addr);
		device_memory_addr = FUNC5(user_dma_pkt->dst_addr);
		if (user_memset)
			skip_host_mem_pin = true;
		break;

	case DMA_DRAM_TO_HOST:
		FUNC0(hdev->dev, "DMA direction is DRAM --> HOST\n");
		dir = DMA_FROM_DEVICE;
		sram_addr = false;
		addr = FUNC5(user_dma_pkt->dst_addr);
		device_memory_addr = FUNC5(user_dma_pkt->src_addr);
		break;

	case DMA_HOST_TO_SRAM:
		FUNC0(hdev->dev, "DMA direction is HOST --> SRAM\n");
		dir = DMA_TO_DEVICE;
		addr = FUNC5(user_dma_pkt->src_addr);
		device_memory_addr = FUNC5(user_dma_pkt->dst_addr);
		if (user_memset)
			skip_host_mem_pin = true;
		break;

	case DMA_SRAM_TO_HOST:
		FUNC0(hdev->dev, "DMA direction is SRAM --> HOST\n");
		dir = DMA_FROM_DEVICE;
		addr = FUNC5(user_dma_pkt->dst_addr);
		device_memory_addr = FUNC5(user_dma_pkt->src_addr);
		break;
	default:
		FUNC1(hdev->dev, "DMA direction is undefined\n");
		return -EFAULT;
	}

	if (sram_addr) {
		if (!FUNC3(device_memory_addr,
				FUNC4(user_dma_pkt->tsize),
				hdev->asic_prop.sram_user_base_address,
				hdev->asic_prop.sram_end_address)) {

			FUNC1(hdev->dev,
				"SRAM address 0x%llx + 0x%x is invalid\n",
				device_memory_addr,
				user_dma_pkt->tsize);
			return -EFAULT;
		}
	} else {
		if (!FUNC3(device_memory_addr,
				FUNC4(user_dma_pkt->tsize),
				hdev->asic_prop.dram_user_base_address,
				hdev->asic_prop.dram_end_address)) {

			FUNC1(hdev->dev,
				"DRAM address 0x%llx + 0x%x is invalid\n",
				device_memory_addr,
				user_dma_pkt->tsize);
			return -EFAULT;
		}
	}

	if (skip_host_mem_pin)
		parser->patched_cb_size += sizeof(*user_dma_pkt);
	else {
		if ((dir == DMA_TO_DEVICE) &&
				(parser->hw_queue_id > GOYA_QUEUE_ID_DMA_1)) {
			FUNC1(hdev->dev,
				"Can't DMA from host on queue other then 1\n");
			return -EFAULT;
		}

		rc = FUNC2(hdev, parser, user_dma_pkt,
						addr, dir);
	}

	return rc;
}