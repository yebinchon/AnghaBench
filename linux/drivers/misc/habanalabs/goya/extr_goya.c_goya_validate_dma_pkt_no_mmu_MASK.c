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
typedef  int u32 ;
struct packet_lin_dma {scalar_t__ tsize; scalar_t__ ctl; int /*<<< orphan*/  dst_addr; int /*<<< orphan*/  src_addr; } ;
struct hl_device {int /*<<< orphan*/  dev; } ;
struct hl_cs_parser {int dummy; } ;
typedef  enum goya_dma_direction { ____Placeholder_goya_dma_direction } goya_dma_direction ;

/* Variables and functions */
 int DMA_DRAM_TO_SRAM ; 
 int DMA_SRAM_TO_DRAM ; 
 int EINVAL ; 
 int GOYA_PKT_LIN_DMA_CTL_DMA_DIR_MASK ; 
 int GOYA_PKT_LIN_DMA_CTL_DMA_DIR_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (struct hl_device*,struct hl_cs_parser*,struct packet_lin_dma*) ; 
 int FUNC3 (struct hl_device*,struct hl_cs_parser*,struct packet_lin_dma*) ; 
 int FUNC4 (scalar_t__) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct hl_device *hdev,
				struct hl_cs_parser *parser,
				struct packet_lin_dma *user_dma_pkt)
{
	enum goya_dma_direction user_dir;
	u32 ctl;
	int rc;

	FUNC0(hdev->dev, "DMA packet details:\n");
	FUNC0(hdev->dev, "source == 0x%llx\n",
		FUNC5(user_dma_pkt->src_addr));
	FUNC0(hdev->dev, "destination == 0x%llx\n",
		FUNC5(user_dma_pkt->dst_addr));
	FUNC0(hdev->dev, "size == %u\n", FUNC4(user_dma_pkt->tsize));

	ctl = FUNC4(user_dma_pkt->ctl);
	user_dir = (ctl & GOYA_PKT_LIN_DMA_CTL_DMA_DIR_MASK) >>
			GOYA_PKT_LIN_DMA_CTL_DMA_DIR_SHIFT;

	/*
	 * Special handling for DMA with size 0. The H/W has a bug where
	 * this can cause the QMAN DMA to get stuck, so block it here.
	 */
	if (user_dma_pkt->tsize == 0) {
		FUNC1(hdev->dev,
			"Got DMA with size 0, might reset the device\n");
		return -EINVAL;
	}

	if ((user_dir == DMA_DRAM_TO_SRAM) || (user_dir == DMA_SRAM_TO_DRAM))
		rc = FUNC3(hdev, parser, user_dma_pkt);
	else
		rc = FUNC2(hdev, parser, user_dma_pkt);

	return rc;
}