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
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_2__ {int /*<<< orphan*/  dma; } ;
struct iwl_txq {TYPE_1__ bc_tbl; int /*<<< orphan*/  dma_addr; } ;
struct iwl_tx_queue_cfg_cmd {int /*<<< orphan*/  cb_size; void* byte_cnt_addr; void* tfdq_addr; int /*<<< orphan*/  tid; int /*<<< orphan*/  sta_id; int /*<<< orphan*/  flags; } ;
struct iwl_trans {int dummy; } ;
struct iwl_host_cmd {int id; int /*<<< orphan*/  flags; int /*<<< orphan*/  data; int /*<<< orphan*/  len; } ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_WANT_SKB ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct iwl_trans*,struct iwl_txq*) ; 
 int FUNC4 (struct iwl_trans*,struct iwl_txq**,int,unsigned int) ; 
 int FUNC5 (struct iwl_trans*,struct iwl_txq*,struct iwl_host_cmd*) ; 
 int FUNC6 (struct iwl_trans*,struct iwl_host_cmd*) ; 

int FUNC7(struct iwl_trans *trans,
				 __le16 flags, u8 sta_id, u8 tid,
				 int cmd_id, int size,
				 unsigned int timeout)
{
	struct iwl_txq *txq = NULL;
	struct iwl_tx_queue_cfg_cmd cmd = {
		.flags = flags,
		.sta_id = sta_id,
		.tid = tid,
	};
	struct iwl_host_cmd hcmd = {
		.id = cmd_id,
		.len = sizeof(cmd) ,
		.data = &cmd, 
		.flags = CMD_WANT_SKB,
	};
	int ret;

	ret = FUNC4(trans, &txq, size, timeout);
	if (ret)
		return ret;

	cmd.tfdq_addr = FUNC2(txq->dma_addr);
	cmd.byte_cnt_addr = FUNC2(txq->bc_tbl.dma);
	cmd.cb_size = FUNC1(FUNC0(size));

	ret = FUNC6(trans, &hcmd);
	if (ret)
		goto error;

	return FUNC5(trans, txq, &hcmd);

error:
	FUNC3(trans, txq);
	return ret;
}