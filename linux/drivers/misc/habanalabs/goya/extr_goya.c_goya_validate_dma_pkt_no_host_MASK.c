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
struct packet_lin_dma {int /*<<< orphan*/  tsize; int /*<<< orphan*/  dst_addr; int /*<<< orphan*/  src_addr; int /*<<< orphan*/  ctl; } ;
struct TYPE_2__ {int /*<<< orphan*/  dram_end_address; int /*<<< orphan*/  dram_user_base_address; int /*<<< orphan*/  sram_end_address; int /*<<< orphan*/  sram_user_base_address; } ;
struct hl_device {int /*<<< orphan*/  dev; TYPE_1__ asic_prop; } ;
struct hl_cs_parser {int patched_cb_size; } ;
typedef  enum goya_dma_direction { ____Placeholder_goya_dma_direction } goya_dma_direction ;

/* Variables and functions */
 int DMA_DRAM_TO_SRAM ; 
 int EFAULT ; 
 int GOYA_PKT_LIN_DMA_CTL_DMA_DIR_MASK ; 
 int GOYA_PKT_LIN_DMA_CTL_DMA_DIR_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct hl_device *hdev,
				struct hl_cs_parser *parser,
				struct packet_lin_dma *user_dma_pkt)
{
	u64 sram_memory_addr, dram_memory_addr;
	enum goya_dma_direction user_dir;
	u32 ctl;

	ctl = FUNC3(user_dma_pkt->ctl);
	user_dir = (ctl & GOYA_PKT_LIN_DMA_CTL_DMA_DIR_MASK) >>
			GOYA_PKT_LIN_DMA_CTL_DMA_DIR_SHIFT;

	if (user_dir == DMA_DRAM_TO_SRAM) {
		FUNC0(hdev->dev, "DMA direction is DRAM --> SRAM\n");
		dram_memory_addr = FUNC4(user_dma_pkt->src_addr);
		sram_memory_addr = FUNC4(user_dma_pkt->dst_addr);
	} else {
		FUNC0(hdev->dev, "DMA direction is SRAM --> DRAM\n");
		sram_memory_addr = FUNC4(user_dma_pkt->src_addr);
		dram_memory_addr = FUNC4(user_dma_pkt->dst_addr);
	}

	if (!FUNC2(sram_memory_addr,
				FUNC3(user_dma_pkt->tsize),
				hdev->asic_prop.sram_user_base_address,
				hdev->asic_prop.sram_end_address)) {
		FUNC1(hdev->dev, "SRAM address 0x%llx + 0x%x is invalid\n",
			sram_memory_addr, user_dma_pkt->tsize);
		return -EFAULT;
	}

	if (!FUNC2(dram_memory_addr,
				FUNC3(user_dma_pkt->tsize),
				hdev->asic_prop.dram_user_base_address,
				hdev->asic_prop.dram_end_address)) {
		FUNC1(hdev->dev, "DRAM address 0x%llx + 0x%x is invalid\n",
			dram_memory_addr, user_dma_pkt->tsize);
		return -EFAULT;
	}

	parser->patched_cb_size += sizeof(*user_dma_pkt);

	return 0;
}