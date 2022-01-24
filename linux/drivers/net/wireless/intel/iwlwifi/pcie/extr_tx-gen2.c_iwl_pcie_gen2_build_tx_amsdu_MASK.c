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
typedef  int /*<<< orphan*/  u8 ;
struct sk_buff {int dummy; } ;
struct iwl_txq {int /*<<< orphan*/ * first_tb_bufs; int /*<<< orphan*/  write_ptr; } ;
struct iwl_trans {int /*<<< orphan*/  dev; } ;
struct iwl_tfh_tfd {int dummy; } ;
struct iwl_device_cmd {int /*<<< orphan*/  hdr; } ;
struct iwl_cmd_meta {int dummy; } ;
struct iwl_cmd_header {int dummy; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int IWL_FIRST_TB_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,void*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct iwl_trans*,struct sk_buff*,struct iwl_tfh_tfd*,int,int,struct iwl_device_cmd*) ; 
 int /*<<< orphan*/  FUNC3 (struct iwl_trans*,struct iwl_tfh_tfd*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct iwl_trans*,struct iwl_cmd_meta*,struct iwl_tfh_tfd*) ; 
 int FUNC5 (struct iwl_txq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct iwl_txq*,int) ; 
 struct iwl_tfh_tfd* FUNC7 (struct iwl_trans*,struct iwl_txq*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct iwl_device_cmd*,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct
iwl_tfh_tfd *FUNC10(struct iwl_trans *trans,
					  struct iwl_txq *txq,
					  struct iwl_device_cmd *dev_cmd,
					  struct sk_buff *skb,
					  struct iwl_cmd_meta *out_meta,
					  int hdr_len,
					  int tx_cmd_len)
{
	int idx = FUNC5(txq, txq->write_ptr);
	struct iwl_tfh_tfd *tfd = FUNC7(trans, txq, idx);
	dma_addr_t tb_phys;
	int len;
	void *tb1_addr;

	tb_phys = FUNC6(txq, idx);

	FUNC3(trans, tfd, tb_phys, IWL_FIRST_TB_SIZE);

	/*
	 * The second TB (tb1) points to the remainder of the TX command
	 * and the 802.11 header - dword aligned size
	 * (This calculation modifies the TX command, so do it before the
	 * setup of the first TB)
	 */
	len = tx_cmd_len + sizeof(struct iwl_cmd_header) + hdr_len -
	      IWL_FIRST_TB_SIZE;

	/* do not align A-MSDU to dword as the subframe header aligns it */

	/* map the data for TB1 */
	tb1_addr = ((u8 *)&dev_cmd->hdr) + IWL_FIRST_TB_SIZE;
	tb_phys = FUNC0(trans->dev, tb1_addr, len, DMA_TO_DEVICE);
	if (FUNC9(FUNC1(trans->dev, tb_phys)))
		goto out_err;
	FUNC3(trans, tfd, tb_phys, len);

	if (FUNC2(trans, skb, tfd,
				      len + IWL_FIRST_TB_SIZE,
				      hdr_len, dev_cmd))
		goto out_err;

	/* building the A-MSDU might have changed this data, memcpy it now */
	FUNC8(&txq->first_tb_bufs[idx], dev_cmd, IWL_FIRST_TB_SIZE);
	return tfd;

out_err:
	FUNC4(trans, out_meta, tfd);
	return NULL;
}