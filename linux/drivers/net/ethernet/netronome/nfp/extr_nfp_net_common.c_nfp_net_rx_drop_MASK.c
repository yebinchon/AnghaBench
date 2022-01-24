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
struct sk_buff {scalar_t__ head; } ;
struct nfp_net_rx_ring {int dummy; } ;
struct nfp_net_rx_buf {scalar_t__ frag; int /*<<< orphan*/  dma_addr; } ;
struct nfp_net_r_vector {int /*<<< orphan*/  rx_sync; int /*<<< orphan*/  rx_replace_buf_alloc_fail; int /*<<< orphan*/  rx_drops; } ;
struct nfp_net_dp {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct nfp_net_dp const*,struct nfp_net_rx_ring*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 

__attribute__((used)) static void
FUNC6(const struct nfp_net_dp *dp, struct nfp_net_r_vector *r_vec,
		struct nfp_net_rx_ring *rx_ring, struct nfp_net_rx_buf *rxbuf,
		struct sk_buff *skb)
{
	FUNC3(&r_vec->rx_sync);
	r_vec->rx_drops++;
	/* If we have both skb and rxbuf the replacement buffer allocation
	 * must have failed, count this as an alloc failure.
	 */
	if (skb && rxbuf)
		r_vec->rx_replace_buf_alloc_fail++;
	FUNC4(&r_vec->rx_sync);

	/* skb is build based on the frag, free_skb() would free the frag
	 * so to be able to reuse it we need an extra ref.
	 */
	if (skb && rxbuf && skb->head == rxbuf->frag)
		FUNC2(FUNC5(rxbuf->frag));
	if (rxbuf)
		FUNC1(dp, rx_ring, rxbuf->frag, rxbuf->dma_addr);
	if (skb)
		FUNC0(skb);
}