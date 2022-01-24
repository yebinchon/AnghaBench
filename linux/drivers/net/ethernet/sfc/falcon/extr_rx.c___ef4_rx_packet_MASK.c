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
typedef  int /*<<< orphan*/  u8 ;
struct ef4_rx_queue {int dummy; } ;
struct ef4_rx_buffer {int flags; int /*<<< orphan*/  len; } ;
struct ef4_nic {int rx_packet_len_offset; int loopback_selftest; TYPE_1__* net_dev; } ;
struct ef4_channel {int /*<<< orphan*/  rx_pkt_n_frags; TYPE_2__* type; int /*<<< orphan*/  rx_pkt_index; int /*<<< orphan*/  rx_queue; struct ef4_nic* efx; } ;
typedef  int /*<<< orphan*/  __le16 ;
struct TYPE_4__ {int /*<<< orphan*/  receive_skb; } ;
struct TYPE_3__ {int features; } ;

/* Variables and functions */
 int EF4_RX_PKT_CSUMMED ; 
 int EF4_RX_PKT_PREFIX_LEN ; 
 int EF4_RX_PKT_TCP ; 
 int NETIF_F_RXCSUM ; 
 struct ef4_rx_queue* FUNC0 (struct ef4_channel*) ; 
 int /*<<< orphan*/  FUNC1 (struct ef4_rx_queue*,struct ef4_rx_buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ef4_nic*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (struct ef4_rx_buffer*) ; 
 struct ef4_rx_buffer* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ef4_channel*,int /*<<< orphan*/ *,struct ef4_rx_buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ef4_channel*,struct ef4_rx_buffer*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int) ; 

void FUNC9(struct ef4_channel *channel)
{
	struct ef4_nic *efx = channel->efx;
	struct ef4_rx_buffer *rx_buf =
		FUNC4(&channel->rx_queue, channel->rx_pkt_index);
	u8 *eh = FUNC3(rx_buf);

	/* Read length from the prefix if necessary.  This already
	 * excludes the length of the prefix itself.
	 */
	if (rx_buf->flags & EF4_RX_PKT_PREFIX_LEN)
		rx_buf->len = FUNC7((__le16 *)
					   (eh + efx->rx_packet_len_offset));

	/* If we're in loopback test, then pass the packet directly to the
	 * loopback layer, and free the rx_buf here
	 */
	if (FUNC8(efx->loopback_selftest)) {
		struct ef4_rx_queue *rx_queue;

		FUNC2(efx, eh, rx_buf->len);
		rx_queue = FUNC0(channel);
		FUNC1(rx_queue, rx_buf,
				    channel->rx_pkt_n_frags);
		goto out;
	}

	if (FUNC8(!(efx->net_dev->features & NETIF_F_RXCSUM)))
		rx_buf->flags &= ~EF4_RX_PKT_CSUMMED;

	if ((rx_buf->flags & EF4_RX_PKT_TCP) && !channel->type->receive_skb)
		FUNC6(channel, rx_buf, channel->rx_pkt_n_frags, eh);
	else
		FUNC5(channel, eh, rx_buf, channel->rx_pkt_n_frags);
out:
	channel->rx_pkt_n_frags = 0;
}