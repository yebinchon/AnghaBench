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
struct sk_buff {void* data; } ;
struct iwl_txq {int /*<<< orphan*/ * first_tb_bufs; int /*<<< orphan*/  write_ptr; } ;
struct iwl_trans {int /*<<< orphan*/  dev; } ;
struct iwl_tfh_tfd {int dummy; } ;
struct iwl_device_cmd {int /*<<< orphan*/  hdr; } ;
struct iwl_cmd_meta {int dummy; } ;
struct iwl_cmd_header {int dummy; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int IWL_FIRST_TB_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct iwl_trans*,struct iwl_tfh_tfd*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct iwl_trans*,struct iwl_cmd_meta*,struct iwl_tfh_tfd*) ; 
 scalar_t__ FUNC5 (struct iwl_trans*,struct sk_buff*,struct iwl_tfh_tfd*,struct iwl_cmd_meta*) ; 
 int FUNC6 (struct iwl_txq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct iwl_txq*,int) ; 
 struct iwl_tfh_tfd* FUNC8 (struct iwl_trans*,struct iwl_txq*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct iwl_device_cmd*,int) ; 
 int FUNC10 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,struct sk_buff*,struct iwl_tfh_tfd*,int,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,struct sk_buff*,void*,int) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct
iwl_tfh_tfd *FUNC14(struct iwl_trans *trans,
				    struct iwl_txq *txq,
				    struct iwl_device_cmd *dev_cmd,
				    struct sk_buff *skb,
				    struct iwl_cmd_meta *out_meta,
				    int hdr_len,
				    int tx_cmd_len,
				    bool pad)
{
	int idx = FUNC6(txq, txq->write_ptr);
	struct iwl_tfh_tfd *tfd = FUNC8(trans, txq, idx);
	dma_addr_t tb_phys;
	int len, tb1_len, tb2_len;
	void *tb1_addr;

	tb_phys = FUNC7(txq, idx);

	/* The first TB points to bi-directional DMA data */
	FUNC9(&txq->first_tb_bufs[idx], dev_cmd, IWL_FIRST_TB_SIZE);

	FUNC3(trans, tfd, tb_phys, IWL_FIRST_TB_SIZE);

	/*
	 * The second TB (tb1) points to the remainder of the TX command
	 * and the 802.11 header - dword aligned size
	 * (This calculation modifies the TX command, so do it before the
	 * setup of the first TB)
	 */
	len = tx_cmd_len + sizeof(struct iwl_cmd_header) + hdr_len -
	      IWL_FIRST_TB_SIZE;

	if (pad)
		tb1_len = FUNC0(len, 4);
	else
		tb1_len = len;

	/* map the data for TB1 */
	tb1_addr = ((u8 *)&dev_cmd->hdr) + IWL_FIRST_TB_SIZE;
	tb_phys = FUNC1(trans->dev, tb1_addr, tb1_len, DMA_TO_DEVICE);
	if (FUNC13(FUNC2(trans->dev, tb_phys)))
		goto out_err;
	FUNC3(trans, tfd, tb_phys, tb1_len);
	FUNC11(trans->dev, skb, tfd, sizeof(*tfd), &dev_cmd->hdr,
			     IWL_FIRST_TB_SIZE + tb1_len, hdr_len);

	/* set up TFD's third entry to point to remainder of skb's head */
	tb2_len = FUNC10(skb) - hdr_len;

	if (tb2_len > 0) {
		tb_phys = FUNC1(trans->dev, skb->data + hdr_len,
					 tb2_len, DMA_TO_DEVICE);
		if (FUNC13(FUNC2(trans->dev, tb_phys)))
			goto out_err;
		FUNC3(trans, tfd, tb_phys, tb2_len);
		FUNC12(trans->dev, skb,
					skb->data + hdr_len,
					tb2_len);
	}

	if (FUNC5(trans, skb, tfd, out_meta))
		goto out_err;

	return tfd;

out_err:
	FUNC4(trans, out_meta, tfd);
	return NULL;
}