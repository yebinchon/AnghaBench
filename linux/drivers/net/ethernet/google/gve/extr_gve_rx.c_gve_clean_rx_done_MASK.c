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
typedef  scalar_t__ u64 ;
typedef  int u32 ;
struct TYPE_2__ {int /*<<< orphan*/  seqno; struct gve_rx_desc* desc_ring; } ;
struct gve_rx_ring {int cnt; int mask; int rpackets; int fill_cnt; int /*<<< orphan*/  statss; int /*<<< orphan*/  rbytes; TYPE_1__ desc; int /*<<< orphan*/  q_num; struct gve_priv* gve; } ;
struct gve_rx_desc {int /*<<< orphan*/  len; int /*<<< orphan*/  flags_seq; } ;
struct gve_priv {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  netdev_features_t ;

/* Variables and functions */
 scalar_t__ GVE_RX_PAD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct gve_rx_ring*,struct gve_rx_desc*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct gve_rx_ring*) ; 
 int /*<<< orphan*/  FUNC6 (struct gve_priv*,struct gve_rx_ring*) ; 
 int /*<<< orphan*/  FUNC7 (struct gve_priv*) ; 
 int /*<<< orphan*/  FUNC8 (struct gve_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,struct gve_rx_desc*,...) ; 
 int /*<<< orphan*/  rx_status ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

bool FUNC11(struct gve_rx_ring *rx, int budget,
		       netdev_features_t feat)
{
	struct gve_priv *priv = rx->gve;
	struct gve_rx_desc *desc;
	u32 cnt = rx->cnt;
	u32 idx = cnt & rx->mask;
	u32 work_done = 0;
	u64 bytes = 0;

	desc = rx->desc.desc_ring + idx;
	while ((FUNC0(desc->flags_seq) == rx->desc.seqno) &&
	       work_done < budget) {
		FUNC8(priv, rx_status, priv->dev,
			   "[%d] idx=%d desc=%p desc->flags_seq=0x%x\n",
			   rx->q_num, idx, desc, desc->flags_seq);
		FUNC8(priv, rx_status, priv->dev,
			   "[%d] seqno=%d rx->desc.seqno=%d\n",
			   rx->q_num, FUNC0(desc->flags_seq),
			   rx->desc.seqno);
		bytes += FUNC1(desc->len) - GVE_RX_PAD;
		if (!FUNC4(rx, desc, feat, idx))
			FUNC7(priv);
		cnt++;
		idx = cnt & rx->mask;
		desc = rx->desc.desc_ring + idx;
		rx->desc.seqno = FUNC3(rx->desc.seqno);
		work_done++;
	}

	if (!work_done)
		return false;

	FUNC9(&rx->statss);
	rx->rpackets += work_done;
	rx->rbytes += bytes;
	FUNC10(&rx->statss);
	rx->cnt = cnt;
	rx->fill_cnt += work_done;

	/* restock desc ring slots */
	FUNC2();	/* Ensure descs are visible before ringing doorbell */
	FUNC6(priv, rx);
	return FUNC5(rx);
}