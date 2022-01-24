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
struct TYPE_3__ {unsigned int chksum_status; unsigned int status; scalar_t__ perr; scalar_t__ derr; } ;
union gmac_rxdesc_0 {TYPE_1__ bits; } ;
struct sk_buff {int /*<<< orphan*/  ip_summed; } ;
struct TYPE_4__ {unsigned int rx_bytes; int /*<<< orphan*/  rx_packets; int /*<<< orphan*/  rx_frame_errors; int /*<<< orphan*/  rx_crc_errors; int /*<<< orphan*/  rx_over_errors; int /*<<< orphan*/  rx_length_errors; int /*<<< orphan*/  rx_errors; } ;
struct gemini_ethernet_port {TYPE_2__ stats; int /*<<< orphan*/  napi; int /*<<< orphan*/ * rx_csum_stats; int /*<<< orphan*/ * rx_stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHECKSUM_UNNECESSARY ; 
 unsigned int ETH_ZLEN ; 
 unsigned int RX_CHKSUM_IP_ERR_UNKNOWN ; 
 unsigned int RX_CHKSUM_IP_UDP_TCP_OK ; 
 scalar_t__ FUNC0 (unsigned int) ; 
 scalar_t__ FUNC1 (unsigned int) ; 
 scalar_t__ FUNC2 (unsigned int) ; 
 scalar_t__ FUNC3 (unsigned int) ; 
 struct sk_buff* FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct sk_buff *FUNC5(struct gemini_ethernet_port *port,
					      union gmac_rxdesc_0 word0,
					      unsigned int frame_len)
{
	unsigned int rx_csum = word0.bits.chksum_status;
	unsigned int rx_status = word0.bits.status;
	struct sk_buff *skb = NULL;

	port->rx_stats[rx_status]++;
	port->rx_csum_stats[rx_csum]++;

	if (word0.bits.derr || word0.bits.perr ||
	    rx_status || frame_len < ETH_ZLEN ||
	    rx_csum >= RX_CHKSUM_IP_ERR_UNKNOWN) {
		port->stats.rx_errors++;

		if (frame_len < ETH_ZLEN || FUNC2(rx_status))
			port->stats.rx_length_errors++;
		if (FUNC3(rx_status))
			port->stats.rx_over_errors++;
		if (FUNC0(rx_status))
			port->stats.rx_crc_errors++;
		if (FUNC1(rx_status))
			port->stats.rx_frame_errors++;
		return NULL;
	}

	skb = FUNC4(&port->napi);
	if (!skb)
		goto update_exit;

	if (rx_csum == RX_CHKSUM_IP_UDP_TCP_OK)
		skb->ip_summed = CHECKSUM_UNNECESSARY;

update_exit:
	port->stats.rx_bytes += frame_len;
	port->stats.rx_packets++;
	return skb;
}