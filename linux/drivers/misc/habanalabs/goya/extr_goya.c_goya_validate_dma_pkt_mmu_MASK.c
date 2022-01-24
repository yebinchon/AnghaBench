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
struct packet_lin_dma {scalar_t__ tsize; int /*<<< orphan*/  src_addr; int /*<<< orphan*/  dst_addr; } ;
struct TYPE_2__ {int /*<<< orphan*/  va_space_host_end_address; int /*<<< orphan*/  va_space_host_start_address; } ;
struct hl_device {int /*<<< orphan*/  dev; TYPE_1__ asic_prop; } ;
struct hl_cs_parser {scalar_t__ hw_queue_id; int patched_cb_size; } ;

/* Variables and functions */
 int EFAULT ; 
 int EINVAL ; 
 scalar_t__ GOYA_QUEUE_ID_DMA_1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct hl_device *hdev,
				struct hl_cs_parser *parser,
				struct packet_lin_dma *user_dma_pkt)
{
	FUNC0(hdev->dev, "DMA packet details:\n");
	FUNC0(hdev->dev, "source == 0x%llx\n",
		FUNC4(user_dma_pkt->src_addr));
	FUNC0(hdev->dev, "destination == 0x%llx\n",
		FUNC4(user_dma_pkt->dst_addr));
	FUNC0(hdev->dev, "size == %u\n", FUNC3(user_dma_pkt->tsize));

	/*
	 * WA for HW-23.
	 * We can't allow user to read from Host using QMANs other than 1.
	 */
	if (parser->hw_queue_id != GOYA_QUEUE_ID_DMA_1 &&
		FUNC2(FUNC4(user_dma_pkt->src_addr),
				FUNC3(user_dma_pkt->tsize),
				hdev->asic_prop.va_space_host_start_address,
				hdev->asic_prop.va_space_host_end_address)) {
		FUNC1(hdev->dev,
			"Can't DMA from host on queue other then 1\n");
		return -EFAULT;
	}

	if (user_dma_pkt->tsize == 0) {
		FUNC1(hdev->dev,
			"Got DMA with size 0, might reset the device\n");
		return -EINVAL;
	}

	parser->patched_cb_size += sizeof(*user_dma_pkt);

	return 0;
}