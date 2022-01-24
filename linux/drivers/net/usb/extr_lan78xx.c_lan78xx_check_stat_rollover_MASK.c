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
struct lan78xx_statstage {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  saved; } ;
struct lan78xx_net {TYPE_1__ stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct lan78xx_statstage*,TYPE_1__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  eee_rx_lpi_time ; 
 int /*<<< orphan*/  eee_rx_lpi_transitions ; 
 int /*<<< orphan*/  eee_tx_lpi_time ; 
 int /*<<< orphan*/  eee_tx_lpi_transitions ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct lan78xx_statstage*,int) ; 
 int /*<<< orphan*/  rx_1024_1518_byte_frames ; 
 int /*<<< orphan*/  rx_128_255_byte_frames ; 
 int /*<<< orphan*/  rx_256_511_bytes_frames ; 
 int /*<<< orphan*/  rx_512_1023_byte_frames ; 
 int /*<<< orphan*/  rx_64_byte_frames ; 
 int /*<<< orphan*/  rx_65_127_byte_frames ; 
 int /*<<< orphan*/  rx_alignment_errors ; 
 int /*<<< orphan*/  rx_broadcast_byte_count ; 
 int /*<<< orphan*/  rx_broadcast_frames ; 
 int /*<<< orphan*/  rx_dropped_frames ; 
 int /*<<< orphan*/  rx_fcs_errors ; 
 int /*<<< orphan*/  rx_fragment_errors ; 
 int /*<<< orphan*/  rx_greater_1518_byte_frames ; 
 int /*<<< orphan*/  rx_jabber_errors ; 
 int /*<<< orphan*/  rx_multicast_byte_count ; 
 int /*<<< orphan*/  rx_multicast_frames ; 
 int /*<<< orphan*/  rx_oversize_frame_errors ; 
 int /*<<< orphan*/  rx_pause_frames ; 
 int /*<<< orphan*/  rx_undersize_frame_errors ; 
 int /*<<< orphan*/  rx_unicast_byte_count ; 
 int /*<<< orphan*/  rx_unicast_frames ; 
 int /*<<< orphan*/  tx_1024_1518_byte_frames ; 
 int /*<<< orphan*/  tx_128_255_byte_frames ; 
 int /*<<< orphan*/  tx_256_511_bytes_frames ; 
 int /*<<< orphan*/  tx_512_1023_byte_frames ; 
 int /*<<< orphan*/  tx_64_byte_frames ; 
 int /*<<< orphan*/  tx_65_127_byte_frames ; 
 int /*<<< orphan*/  tx_bad_byte_count ; 
 int /*<<< orphan*/  tx_broadcast_byte_count ; 
 int /*<<< orphan*/  tx_broadcast_frames ; 
 int /*<<< orphan*/  tx_carrier_errors ; 
 int /*<<< orphan*/  tx_excess_deferral_errors ; 
 int /*<<< orphan*/  tx_excessive_collision ; 
 int /*<<< orphan*/  tx_fcs_errors ; 
 int /*<<< orphan*/  tx_greater_1518_byte_frames ; 
 int /*<<< orphan*/  tx_late_collisions ; 
 int /*<<< orphan*/  tx_multicast_byte_count ; 
 int /*<<< orphan*/  tx_multicast_frames ; 
 int /*<<< orphan*/  tx_multiple_collisions ; 
 int /*<<< orphan*/  tx_pause_frames ; 
 int /*<<< orphan*/  tx_single_collisions ; 
 int /*<<< orphan*/  tx_unicast_byte_count ; 
 int /*<<< orphan*/  tx_unicast_frames ; 

__attribute__((used)) static void FUNC2(struct lan78xx_net *dev,
					struct lan78xx_statstage *stats)
{
	FUNC0(stats, dev->stats, rx_fcs_errors);
	FUNC0(stats, dev->stats, rx_alignment_errors);
	FUNC0(stats, dev->stats, rx_fragment_errors);
	FUNC0(stats, dev->stats, rx_jabber_errors);
	FUNC0(stats, dev->stats, rx_undersize_frame_errors);
	FUNC0(stats, dev->stats, rx_oversize_frame_errors);
	FUNC0(stats, dev->stats, rx_dropped_frames);
	FUNC0(stats, dev->stats, rx_unicast_byte_count);
	FUNC0(stats, dev->stats, rx_broadcast_byte_count);
	FUNC0(stats, dev->stats, rx_multicast_byte_count);
	FUNC0(stats, dev->stats, rx_unicast_frames);
	FUNC0(stats, dev->stats, rx_broadcast_frames);
	FUNC0(stats, dev->stats, rx_multicast_frames);
	FUNC0(stats, dev->stats, rx_pause_frames);
	FUNC0(stats, dev->stats, rx_64_byte_frames);
	FUNC0(stats, dev->stats, rx_65_127_byte_frames);
	FUNC0(stats, dev->stats, rx_128_255_byte_frames);
	FUNC0(stats, dev->stats, rx_256_511_bytes_frames);
	FUNC0(stats, dev->stats, rx_512_1023_byte_frames);
	FUNC0(stats, dev->stats, rx_1024_1518_byte_frames);
	FUNC0(stats, dev->stats, rx_greater_1518_byte_frames);
	FUNC0(stats, dev->stats, eee_rx_lpi_transitions);
	FUNC0(stats, dev->stats, eee_rx_lpi_time);
	FUNC0(stats, dev->stats, tx_fcs_errors);
	FUNC0(stats, dev->stats, tx_excess_deferral_errors);
	FUNC0(stats, dev->stats, tx_carrier_errors);
	FUNC0(stats, dev->stats, tx_bad_byte_count);
	FUNC0(stats, dev->stats, tx_single_collisions);
	FUNC0(stats, dev->stats, tx_multiple_collisions);
	FUNC0(stats, dev->stats, tx_excessive_collision);
	FUNC0(stats, dev->stats, tx_late_collisions);
	FUNC0(stats, dev->stats, tx_unicast_byte_count);
	FUNC0(stats, dev->stats, tx_broadcast_byte_count);
	FUNC0(stats, dev->stats, tx_multicast_byte_count);
	FUNC0(stats, dev->stats, tx_unicast_frames);
	FUNC0(stats, dev->stats, tx_broadcast_frames);
	FUNC0(stats, dev->stats, tx_multicast_frames);
	FUNC0(stats, dev->stats, tx_pause_frames);
	FUNC0(stats, dev->stats, tx_64_byte_frames);
	FUNC0(stats, dev->stats, tx_65_127_byte_frames);
	FUNC0(stats, dev->stats, tx_128_255_byte_frames);
	FUNC0(stats, dev->stats, tx_256_511_bytes_frames);
	FUNC0(stats, dev->stats, tx_512_1023_byte_frames);
	FUNC0(stats, dev->stats, tx_1024_1518_byte_frames);
	FUNC0(stats, dev->stats, tx_greater_1518_byte_frames);
	FUNC0(stats, dev->stats, eee_tx_lpi_transitions);
	FUNC0(stats, dev->stats, eee_tx_lpi_time);

	FUNC1(&dev->stats.saved, stats, sizeof(struct lan78xx_statstage));
}