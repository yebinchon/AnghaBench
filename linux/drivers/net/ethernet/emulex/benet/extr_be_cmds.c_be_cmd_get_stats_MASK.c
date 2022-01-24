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
struct be_mcc_wrb {int dummy; } ;
struct be_dma_mem {int /*<<< orphan*/  size; struct be_cmd_req_hdr* va; } ;
struct be_cmd_req_hdr {int version; } ;
struct be_adapter {int stats_cmd_sent; int /*<<< orphan*/  mcc_lock; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct be_adapter*) ; 
 scalar_t__ FUNC1 (struct be_adapter*) ; 
 int /*<<< orphan*/  CMD_SUBSYSTEM_ETH ; 
 int EBUSY ; 
 int /*<<< orphan*/  OPCODE_ETH_GET_STATISTICS ; 
 int FUNC2 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct be_cmd_req_hdr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct be_mcc_wrb*,struct be_dma_mem*) ; 
 scalar_t__ FUNC4 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct be_mcc_wrb* FUNC7 (struct be_adapter*) ; 

int FUNC8(struct be_adapter *adapter, struct be_dma_mem *nonemb_cmd)
{
	struct be_mcc_wrb *wrb;
	struct be_cmd_req_hdr *hdr;
	int status = 0;

	FUNC5(&adapter->mcc_lock);

	wrb = FUNC7(adapter);
	if (!wrb) {
		status = -EBUSY;
		goto err;
	}
	hdr = nonemb_cmd->va;

	FUNC3(hdr, CMD_SUBSYSTEM_ETH,
			       OPCODE_ETH_GET_STATISTICS, nonemb_cmd->size, wrb,
			       nonemb_cmd);

	/* version 1 of the cmd is not supported only by BE2 */
	if (FUNC0(adapter))
		hdr->version = 0;
	if (FUNC1(adapter) || FUNC4(adapter))
		hdr->version = 1;
	else
		hdr->version = 2;

	status = FUNC2(adapter);
	if (status)
		goto err;

	adapter->stats_cmd_sent = true;

err:
	FUNC6(&adapter->mcc_lock);
	return status;
}