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
struct sk_buff {scalar_t__ len; scalar_t__ data; } ;
struct ath10k_pci_pipe {int /*<<< orphan*/  buf_sz; struct ath10k_ce_pipe* ce_hdl; struct ath10k* hif_ce_state; } ;
struct ath10k_ce_pipe {TYPE_1__* ops; } ;
struct ath10k_ce {int /*<<< orphan*/  ce_lock; } ;
struct ath10k {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_4__ {int /*<<< orphan*/  paddr; } ;
struct TYPE_3__ {int (* ce_rx_post_buf ) (struct ath10k_ce_pipe*,struct sk_buff*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,char*) ; 
 struct ath10k_ce* FUNC2 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath10k*,char*) ; 
 struct sk_buff* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (struct ath10k_ce_pipe*,struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(struct ath10k_pci_pipe *pipe)
{
	struct ath10k *ar = pipe->hif_ce_state;
	struct ath10k_ce *ce = FUNC2(ar);
	struct ath10k_ce_pipe *ce_pipe = pipe->ce_hdl;
	struct sk_buff *skb;
	dma_addr_t paddr;
	int ret;

	skb = FUNC4(pipe->buf_sz);
	if (!skb)
		return -ENOMEM;

	FUNC1((unsigned long)skb->data & 3, "unaligned skb");

	paddr = FUNC6(ar->dev, skb->data,
			       skb->len + FUNC9(skb),
			       DMA_FROM_DEVICE);
	if (FUNC13(FUNC7(ar->dev, paddr))) {
		FUNC3(ar, "failed to dma map pci rx buf\n");
		FUNC5(skb);
		return -EIO;
	}

	FUNC0(skb)->paddr = paddr;

	FUNC10(&ce->ce_lock);
	ret = ce_pipe->ops->ce_rx_post_buf(ce_pipe, skb, paddr);
	FUNC11(&ce->ce_lock);
	if (ret) {
		FUNC8(ar->dev, paddr, skb->len + FUNC9(skb),
				 DMA_FROM_DEVICE);
		FUNC5(skb);
		return ret;
	}

	return 0;
}