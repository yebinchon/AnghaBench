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
struct sk_buff {int dummy; } ;
struct iwl_trans {int /*<<< orphan*/  dev; } ;
struct iwl_tfh_tfd {int dummy; } ;
struct iwl_cmd_meta {int /*<<< orphan*/  tbs; } ;
typedef  int /*<<< orphan*/  skb_frag_t ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_2__ {int nr_frags; int /*<<< orphan*/ * frags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct iwl_trans*,struct iwl_tfh_tfd*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*) ; 
 TYPE_1__* FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct iwl_trans *trans,
				      struct sk_buff *skb,
				      struct iwl_tfh_tfd *tfd,
				      struct iwl_cmd_meta *out_meta)
{
	int i;

	for (i = 0; i < FUNC6(skb)->nr_frags; i++) {
		const skb_frag_t *frag = &FUNC6(skb)->frags[i];
		dma_addr_t tb_phys;
		int tb_idx;

		if (!FUNC5(frag))
			continue;

		tb_phys = FUNC4(trans->dev, frag, 0,
					   FUNC5(frag), DMA_TO_DEVICE);

		if (FUNC8(FUNC1(trans->dev, tb_phys)))
			return -ENOMEM;
		tb_idx = FUNC2(trans, tfd, tb_phys,
					      FUNC5(frag));
		FUNC7(trans->dev, skb,
					FUNC3(frag),
					FUNC5(frag));
		if (tb_idx < 0)
			return tb_idx;

		out_meta->tbs |= FUNC0(tb_idx);
	}

	return 0;
}