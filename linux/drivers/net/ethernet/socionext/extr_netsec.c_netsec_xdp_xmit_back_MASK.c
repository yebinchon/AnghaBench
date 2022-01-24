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
struct xdp_frame {int dummy; } ;
struct xdp_buff {int dummy; } ;
struct netsec_priv {struct netsec_desc_ring* desc_ring; } ;
struct netsec_desc_ring {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 size_t NETSEC_RING_TX ; 
 int /*<<< orphan*/  NETSEC_XDP_CONSUMED ; 
 struct xdp_frame* FUNC0 (struct xdp_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct netsec_priv*,struct xdp_frame*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static u32 FUNC5(struct netsec_priv *priv, struct xdp_buff *xdp)
{
	struct netsec_desc_ring *tx_ring = &priv->desc_ring[NETSEC_RING_TX];
	struct xdp_frame *xdpf = FUNC0(xdp);
	u32 ret;

	if (FUNC4(!xdpf))
		return NETSEC_XDP_CONSUMED;

	FUNC2(&tx_ring->lock);
	ret = FUNC1(priv, xdpf, false);
	FUNC3(&tx_ring->lock);

	return ret;
}