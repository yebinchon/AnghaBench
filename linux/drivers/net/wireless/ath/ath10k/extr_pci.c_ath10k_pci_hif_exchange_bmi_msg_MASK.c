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
struct bmi_xfer {int wait_for_resp; scalar_t__ resp_len; } ;
struct ath10k_pci_pipe {struct ath10k_ce_pipe* ce_hdl; } ;
struct ath10k_pci {struct ath10k_pci_pipe* pipe_info; } ;
struct ath10k_ce_pipe {int dummy; } ;
struct ath10k {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 size_t BMI_CE_NUM_TO_HOST ; 
 size_t BMI_CE_NUM_TO_TARG ; 
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int EINVAL ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct ath10k_ce_pipe*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath10k_ce_pipe*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ath10k_ce_pipe*,struct bmi_xfer*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct ath10k_ce_pipe*,struct bmi_xfer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct ath10k*,struct ath10k_ce_pipe*,struct ath10k_ce_pipe*,struct bmi_xfer*) ; 
 struct ath10k_pci* FUNC5 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (void*) ; 
 void* FUNC10 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (void*,void*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,scalar_t__) ; 

int FUNC15(struct ath10k *ar,
				    void *req, u32 req_len,
				    void *resp, u32 *resp_len)
{
	struct ath10k_pci *ar_pci = FUNC5(ar);
	struct ath10k_pci_pipe *pci_tx = &ar_pci->pipe_info[BMI_CE_NUM_TO_TARG];
	struct ath10k_pci_pipe *pci_rx = &ar_pci->pipe_info[BMI_CE_NUM_TO_HOST];
	struct ath10k_ce_pipe *ce_tx = pci_tx->ce_hdl;
	struct ath10k_ce_pipe *ce_rx = pci_rx->ce_hdl;
	dma_addr_t req_paddr = 0;
	dma_addr_t resp_paddr = 0;
	struct bmi_xfer xfer = {};
	void *treq, *tresp = NULL;
	int ret = 0;

	FUNC13();

	if (resp && !resp_len)
		return -EINVAL;

	if (resp && resp_len && *resp_len == 0)
		return -EINVAL;

	treq = FUNC10(req, req_len, GFP_KERNEL);
	if (!treq)
		return -ENOMEM;

	req_paddr = FUNC6(ar->dev, treq, req_len, DMA_TO_DEVICE);
	ret = FUNC7(ar->dev, req_paddr);
	if (ret) {
		ret = -EIO;
		goto err_dma;
	}

	if (resp && resp_len) {
		tresp = FUNC11(*resp_len, GFP_KERNEL);
		if (!tresp) {
			ret = -ENOMEM;
			goto err_req;
		}

		resp_paddr = FUNC6(ar->dev, tresp, *resp_len,
					    DMA_FROM_DEVICE);
		ret = FUNC7(ar->dev, resp_paddr);
		if (ret) {
			ret = -EIO;
			goto err_req;
		}

		xfer.wait_for_resp = true;
		xfer.resp_len = 0;

		FUNC2(ce_rx, &xfer, resp_paddr);
	}

	ret = FUNC3(ce_tx, &xfer, req_paddr, req_len, -1, 0);
	if (ret)
		goto err_resp;

	ret = FUNC4(ar, ce_tx, ce_rx, &xfer);
	if (ret) {
		dma_addr_t unused_buffer;
		unsigned int unused_nbytes;
		unsigned int unused_id;

		FUNC0(ce_tx, NULL, &unused_buffer,
					   &unused_nbytes, &unused_id);
	} else {
		/* non-zero means we did not time out */
		ret = 0;
	}

err_resp:
	if (resp) {
		dma_addr_t unused_buffer;

		FUNC1(ce_rx, NULL, &unused_buffer);
		FUNC8(ar->dev, resp_paddr,
				 *resp_len, DMA_FROM_DEVICE);
	}
err_req:
	FUNC8(ar->dev, req_paddr, req_len, DMA_TO_DEVICE);

	if (ret == 0 && resp_len) {
		*resp_len = FUNC14(*resp_len, xfer.resp_len);
		FUNC12(resp, tresp, xfer.resp_len);
	}
err_dma:
	FUNC9(treq);
	FUNC9(tresp);

	return ret;
}