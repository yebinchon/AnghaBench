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
typedef  size_t u8 ;
struct kvaser_pciefd_rx_packet {int* header; } ;
struct kvaser_pciefd_can {scalar_t__ err_rep_cnt; int /*<<< orphan*/  bec_poll_timer; } ;
struct kvaser_pciefd {size_t nr_channels; struct kvaser_pciefd_can** can; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  KVASER_PCIEFD_BEC_POLL_FREQ ; 
 scalar_t__ KVASER_PCIEFD_MAX_ERR_REP ; 
 int KVASER_PCIEFD_PACKET_CHID_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (struct kvaser_pciefd_can*) ; 
 int /*<<< orphan*/  FUNC1 (struct kvaser_pciefd_can*,struct kvaser_pciefd_rx_packet*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct kvaser_pciefd *pcie,
					     struct kvaser_pciefd_rx_packet *p)
{
	struct kvaser_pciefd_can *can;
	u8 ch_id = (p->header[1] >> KVASER_PCIEFD_PACKET_CHID_SHIFT) & 0x7;

	if (ch_id >= pcie->nr_channels)
		return -EIO;

	can = pcie->can[ch_id];

	FUNC1(can, p);
	if (can->err_rep_cnt >= KVASER_PCIEFD_MAX_ERR_REP)
		/* Do not report more errors, until bec_poll_timer expires */
		FUNC0(can);
	/* Start polling the error counters */
	FUNC2(&can->bec_poll_timer, KVASER_PCIEFD_BEC_POLL_FREQ);
	return 0;
}