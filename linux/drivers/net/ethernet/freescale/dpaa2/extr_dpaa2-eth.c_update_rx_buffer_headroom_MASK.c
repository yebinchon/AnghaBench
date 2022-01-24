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
struct dpni_buffer_layout {int /*<<< orphan*/  options; scalar_t__ data_head_room; int /*<<< orphan*/  member_0; } ;
struct dpaa2_eth_priv {int /*<<< orphan*/  net_dev; int /*<<< orphan*/  mc_token; int /*<<< orphan*/  mc_io; } ;

/* Variables and functions */
 int /*<<< orphan*/  DPNI_BUF_LAYOUT_OPT_DATA_HEAD_ROOM ; 
 int /*<<< orphan*/  DPNI_QUEUE_RX ; 
 int /*<<< orphan*/  XDP_PACKET_HEADROOM ; 
 scalar_t__ FUNC0 (struct dpaa2_eth_priv*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct dpni_buffer_layout*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct dpni_buffer_layout*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC4(struct dpaa2_eth_priv *priv, bool has_xdp)
{
	struct dpni_buffer_layout buf_layout = {0};
	int err;

	err = FUNC1(priv->mc_io, 0, priv->mc_token,
				     DPNI_QUEUE_RX, &buf_layout);
	if (err) {
		FUNC3(priv->net_dev, "dpni_get_buffer_layout failed\n");
		return err;
	}

	/* Reserve extra headroom for XDP header size changes */
	buf_layout.data_head_room = FUNC0(priv) +
				    (has_xdp ? XDP_PACKET_HEADROOM : 0);
	buf_layout.options = DPNI_BUF_LAYOUT_OPT_DATA_HEAD_ROOM;
	err = FUNC2(priv->mc_io, 0, priv->mc_token,
				     DPNI_QUEUE_RX, &buf_layout);
	if (err) {
		FUNC3(priv->net_dev, "dpni_set_buffer_layout failed\n");
		return err;
	}

	return 0;
}