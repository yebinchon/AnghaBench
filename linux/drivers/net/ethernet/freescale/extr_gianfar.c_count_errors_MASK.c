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
typedef  int u32 ;
struct net_device_stats {int /*<<< orphan*/  rx_over_errors; int /*<<< orphan*/  rx_crc_errors; int /*<<< orphan*/  rx_frame_errors; int /*<<< orphan*/  rx_length_errors; } ;
struct net_device {struct net_device_stats stats; } ;
struct gfar_extra_stats {int /*<<< orphan*/  rx_overrun; int /*<<< orphan*/  rx_crcerr; int /*<<< orphan*/  rx_nonoctet; int /*<<< orphan*/  rx_short; int /*<<< orphan*/  rx_large; int /*<<< orphan*/  rx_trunc; } ;
struct gfar_private {struct gfar_extra_stats extra_stats; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int RXBD_CRCERR ; 
 int RXBD_LARGE ; 
 int RXBD_NONOCTET ; 
 int RXBD_OVERRUN ; 
 int RXBD_SHORT ; 
 int RXBD_TRUNCATED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct gfar_private* FUNC2 (struct net_device*) ; 

__attribute__((used)) static void FUNC3(u32 lstatus, struct net_device *ndev)
{
	struct gfar_private *priv = FUNC2(ndev);
	struct net_device_stats *stats = &ndev->stats;
	struct gfar_extra_stats *estats = &priv->extra_stats;

	/* If the packet was truncated, none of the other errors matter */
	if (lstatus & FUNC0(RXBD_TRUNCATED)) {
		stats->rx_length_errors++;

		FUNC1(&estats->rx_trunc);

		return;
	}
	/* Count the errors, if there were any */
	if (lstatus & FUNC0(RXBD_LARGE | RXBD_SHORT)) {
		stats->rx_length_errors++;

		if (lstatus & FUNC0(RXBD_LARGE))
			FUNC1(&estats->rx_large);
		else
			FUNC1(&estats->rx_short);
	}
	if (lstatus & FUNC0(RXBD_NONOCTET)) {
		stats->rx_frame_errors++;
		FUNC1(&estats->rx_nonoctet);
	}
	if (lstatus & FUNC0(RXBD_CRCERR)) {
		FUNC1(&estats->rx_crcerr);
		stats->rx_crc_errors++;
	}
	if (lstatus & FUNC0(RXBD_OVERRUN)) {
		FUNC1(&estats->rx_overrun);
		stats->rx_over_errors++;
	}
}