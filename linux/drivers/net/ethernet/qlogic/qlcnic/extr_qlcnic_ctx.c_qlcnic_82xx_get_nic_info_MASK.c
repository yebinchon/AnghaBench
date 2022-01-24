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
typedef  int u8 ;
struct qlcnic_info_le {int /*<<< orphan*/  max_mtu; int /*<<< orphan*/  capabilities; int /*<<< orphan*/  max_rx_ques; int /*<<< orphan*/  max_tx_ques; int /*<<< orphan*/  switch_mode; int /*<<< orphan*/  phys_port; int /*<<< orphan*/  max_tx_bw; int /*<<< orphan*/  min_tx_bw; int /*<<< orphan*/  op_mode; int /*<<< orphan*/  pci_func; } ;
struct qlcnic_info {void* max_mtu; int /*<<< orphan*/  capabilities; void* max_rx_ques; void* max_tx_ques; void* switch_mode; void* phys_port; void* max_tx_bw; void* min_tx_bw; void* op_mode; void* pci_func; } ;
struct TYPE_3__ {int* arg; } ;
struct qlcnic_cmd_args {TYPE_1__ req; } ;
struct qlcnic_adapter {TYPE_2__* pdev; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  QLCNIC_CMD_GET_NIC_INFO ; 
 int QLCNIC_RCODE_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 void* FUNC3 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,size_t,void*,int /*<<< orphan*/ ) ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (struct qlcnic_cmd_args*,struct qlcnic_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct qlcnic_cmd_args*) ; 
 int FUNC9 (struct qlcnic_adapter*,struct qlcnic_cmd_args*) ; 

int FUNC10(struct qlcnic_adapter *adapter,
			     struct qlcnic_info *npar_info, u8 func_id)
{
	int	err;
	dma_addr_t nic_dma_t;
	const struct qlcnic_info_le *nic_info;
	void *nic_info_addr;
	struct qlcnic_cmd_args cmd;
	size_t  nic_size = sizeof(struct qlcnic_info_le);

	nic_info_addr = FUNC3(&adapter->pdev->dev, nic_size,
					   &nic_dma_t, GFP_KERNEL);
	if (!nic_info_addr)
		return -ENOMEM;

	nic_info = nic_info_addr;

	err = FUNC7(&cmd, adapter, QLCNIC_CMD_GET_NIC_INFO);
	if (err)
		goto out_free_dma;

	cmd.req.arg[1] = FUNC1(nic_dma_t);
	cmd.req.arg[2] = FUNC0(nic_dma_t);
	cmd.req.arg[3] = (func_id << 16 | nic_size);
	err = FUNC9(adapter, &cmd);
	if (err != QLCNIC_RCODE_SUCCESS) {
		FUNC2(&adapter->pdev->dev,
			"Failed to get nic info%d\n", err);
		err = -EIO;
	} else {
		npar_info->pci_func = FUNC5(nic_info->pci_func);
		npar_info->op_mode = FUNC5(nic_info->op_mode);
		npar_info->min_tx_bw = FUNC5(nic_info->min_tx_bw);
		npar_info->max_tx_bw = FUNC5(nic_info->max_tx_bw);
		npar_info->phys_port = FUNC5(nic_info->phys_port);
		npar_info->switch_mode = FUNC5(nic_info->switch_mode);
		npar_info->max_tx_ques = FUNC5(nic_info->max_tx_ques);
		npar_info->max_rx_ques = FUNC5(nic_info->max_rx_ques);
		npar_info->capabilities = FUNC6(nic_info->capabilities);
		npar_info->max_mtu = FUNC5(nic_info->max_mtu);
	}

	FUNC8(&cmd);
out_free_dma:
	FUNC4(&adapter->pdev->dev, nic_size, nic_info_addr,
			  nic_dma_t);

	return err;
}