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
struct mei_msg_hdr {int dummy; } ;
struct mei_device {int /*<<< orphan*/  init_clients_timer; int /*<<< orphan*/  hbm_state; int /*<<< orphan*/  dev; TYPE_2__* dr_dscr; } ;
struct hbm_dma_setup_request {TYPE_1__* dma_dscr; int /*<<< orphan*/  hbm_cmd; } ;
typedef  int /*<<< orphan*/  phys_addr_t ;
struct TYPE_4__ {int /*<<< orphan*/  size; int /*<<< orphan*/  daddr; } ;
struct TYPE_3__ {int /*<<< orphan*/  size; int /*<<< orphan*/  addr_lo; int /*<<< orphan*/  addr_hi; } ;

/* Variables and functions */
 unsigned int DMA_DSCR_NUM ; 
 int /*<<< orphan*/  MEI_CLIENTS_INIT_TIMEOUT ; 
 int /*<<< orphan*/  MEI_HBM_DMA_SETUP_REQ_CMD ; 
 int /*<<< orphan*/  MEI_HBM_DR_SETUP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mei_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct mei_msg_hdr*,size_t const) ; 
 int FUNC4 (struct mei_device*,struct mei_msg_hdr*,struct hbm_dma_setup_request*) ; 
 int /*<<< orphan*/  FUNC5 (struct mei_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct hbm_dma_setup_request*,int /*<<< orphan*/ ,size_t const) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct mei_device *dev)
{
	struct mei_msg_hdr mei_hdr;
	struct hbm_dma_setup_request req;
	const size_t len = sizeof(struct hbm_dma_setup_request);
	unsigned int i;
	int ret;

	FUNC3(&mei_hdr, len);

	FUNC6(&req, 0, len);
	req.hbm_cmd = MEI_HBM_DMA_SETUP_REQ_CMD;
	for (i = 0; i < DMA_DSCR_NUM; i++) {
		phys_addr_t paddr;

		paddr = dev->dr_dscr[i].daddr;
		req.dma_dscr[i].addr_hi = FUNC7(paddr);
		req.dma_dscr[i].addr_lo = FUNC1(paddr);
		req.dma_dscr[i].size = dev->dr_dscr[i].size;
	}

	FUNC2(dev);

	ret = FUNC4(dev, &mei_hdr, &req);
	if (ret) {
		FUNC0(dev->dev, "dma setup request write failed: ret = %d.\n",
			ret);
		return ret;
	}

	dev->hbm_state = MEI_HBM_DR_SETUP;
	dev->init_clients_timer = MEI_CLIENTS_INIT_TIMEOUT;
	FUNC5(dev);
	return 0;
}