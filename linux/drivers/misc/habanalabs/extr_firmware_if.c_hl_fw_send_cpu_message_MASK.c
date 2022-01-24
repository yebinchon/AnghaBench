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
typedef  int /*<<< orphan*/  u16 ;
struct hl_device {int device_cpu_disabled; TYPE_1__* asic_funcs; int /*<<< orphan*/  send_cpu_message_lock; int /*<<< orphan*/  dev; scalar_t__ disabled; } ;
struct armcp_packet {int /*<<< orphan*/  result; int /*<<< orphan*/  ctl; int /*<<< orphan*/  fence; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_2__ {int /*<<< orphan*/  (* cpu_accessible_dma_pool_free ) (struct hl_device*,int /*<<< orphan*/ ,struct armcp_packet*) ;struct armcp_packet* (* cpu_accessible_dma_pool_alloc ) (struct hl_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int ARMCP_PACKET_FENCE_VAL ; 
 int ARMCP_PKT_CTL_OPCODE_MASK ; 
 int ARMCP_PKT_CTL_OPCODE_SHIFT ; 
 int ARMCP_PKT_CTL_RC_MASK ; 
 int ARMCP_PKT_CTL_RC_SHIFT ; 
 int EIO ; 
 int ENOMEM ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct hl_device*,int) ; 
 int FUNC2 (struct hl_device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct hl_device*,int /*<<< orphan*/ *,int,int,int,int,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct armcp_packet*,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 struct armcp_packet* FUNC9 (struct hl_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct hl_device*,int /*<<< orphan*/ ,struct armcp_packet*) ; 

int FUNC11(struct hl_device *hdev, u32 hw_queue_id, u32 *msg,
				u16 len, u32 timeout, long *result)
{
	struct armcp_packet *pkt;
	dma_addr_t pkt_dma_addr;
	u32 tmp;
	int rc = 0;

	pkt = hdev->asic_funcs->cpu_accessible_dma_pool_alloc(hdev, len,
								&pkt_dma_addr);
	if (!pkt) {
		FUNC0(hdev->dev,
			"Failed to allocate DMA memory for packet to CPU\n");
		return -ENOMEM;
	}

	FUNC6(pkt, msg, len);

	FUNC7(&hdev->send_cpu_message_lock);

	if (hdev->disabled)
		goto out;

	if (hdev->device_cpu_disabled) {
		rc = -EIO;
		goto out;
	}

	rc = FUNC2(hdev, hw_queue_id, len, pkt_dma_addr);
	if (rc) {
		FUNC0(hdev->dev, "Failed to send CB on CPU PQ (%d)\n", rc);
		goto out;
	}

	rc = FUNC3(hdev, &pkt->fence, tmp,
				(tmp == ARMCP_PACKET_FENCE_VAL), 1000,
				timeout, true);

	FUNC1(hdev, hw_queue_id);

	if (rc == -ETIMEDOUT) {
		FUNC0(hdev->dev, "Device CPU packet timeout (0x%x)\n", tmp);
		hdev->device_cpu_disabled = true;
		goto out;
	}

	tmp = FUNC4(pkt->ctl);

	rc = (tmp & ARMCP_PKT_CTL_RC_MASK) >> ARMCP_PKT_CTL_RC_SHIFT;
	if (rc) {
		FUNC0(hdev->dev, "F/W ERROR %d for CPU packet %d\n",
			rc,
			(tmp & ARMCP_PKT_CTL_OPCODE_MASK)
						>> ARMCP_PKT_CTL_OPCODE_SHIFT);
		rc = -EIO;
	} else if (result) {
		*result = (long) FUNC5(pkt->result);
	}

out:
	FUNC8(&hdev->send_cpu_message_lock);

	hdev->asic_funcs->cpu_accessible_dma_pool_free(hdev, len, pkt);

	return rc;
}