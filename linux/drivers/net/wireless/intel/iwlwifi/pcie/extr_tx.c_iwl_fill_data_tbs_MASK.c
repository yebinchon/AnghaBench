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
typedef  scalar_t__ u8 ;
typedef  scalar_t__ u16 ;
struct sk_buff {scalar_t__ data; } ;
struct iwl_txq {int dummy; } ;
struct iwl_trans {int /*<<< orphan*/  dev; } ;
struct iwl_cmd_meta {int /*<<< orphan*/  tbs; } ;
typedef  int /*<<< orphan*/  skb_frag_t ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_2__ {int nr_frags; int /*<<< orphan*/ * frags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct iwl_trans*,struct iwl_txq*,int /*<<< orphan*/ ,scalar_t__,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC7 (struct sk_buff*) ; 
 TYPE_1__* FUNC8 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct sk_buff*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct iwl_trans *trans, struct sk_buff *skb,
			     struct iwl_txq *txq, u8 hdr_len,
			     struct iwl_cmd_meta *out_meta)
{
	u16 head_tb_len;
	int i;

	/*
	 * Set up TFD's third entry to point directly to remainder
	 * of skb's head, if any
	 */
	head_tb_len = FUNC7(skb) - hdr_len;

	if (head_tb_len > 0) {
		dma_addr_t tb_phys = FUNC1(trans->dev,
						    skb->data + hdr_len,
						    head_tb_len, DMA_TO_DEVICE);
		if (FUNC10(FUNC2(trans->dev, tb_phys)))
			return -EINVAL;
		FUNC9(trans->dev, skb,
					skb->data + hdr_len,
					head_tb_len);
		FUNC3(trans, txq, tb_phys, head_tb_len, false);
	}

	/* set up the remaining entries to point to the data */
	for (i = 0; i < FUNC8(skb)->nr_frags; i++) {
		const skb_frag_t *frag = &FUNC8(skb)->frags[i];
		dma_addr_t tb_phys;
		int tb_idx;

		if (!FUNC6(frag))
			continue;

		tb_phys = FUNC5(trans->dev, frag, 0,
					   FUNC6(frag), DMA_TO_DEVICE);

		if (FUNC10(FUNC2(trans->dev, tb_phys)))
			return -EINVAL;
		FUNC9(trans->dev, skb,
					FUNC4(frag),
					FUNC6(frag));
		tb_idx = FUNC3(trans, txq, tb_phys,
						FUNC6(frag), false);
		if (tb_idx < 0)
			return tb_idx;

		out_meta->tbs |= FUNC0(tb_idx);
	}

	return 0;
}