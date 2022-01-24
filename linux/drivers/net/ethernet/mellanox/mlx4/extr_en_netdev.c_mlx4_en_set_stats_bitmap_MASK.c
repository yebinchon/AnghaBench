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
typedef  int /*<<< orphan*/  u8 ;
struct mlx4_en_stats_bitmap {int /*<<< orphan*/  bitmap; int /*<<< orphan*/  mutex; } ;
struct mlx4_dev {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NUM_ALL_STATS ; 
 scalar_t__ NUM_FLOW_STATS ; 
 int NUM_MAIN_STATS ; 
 int NUM_PF_STATS ; 
 int NUM_PHY_STATS ; 
 int NUM_PKT_STATS ; 
 int NUM_PORT_STATS ; 
 int NUM_XDP_STATS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx4_dev*,struct mlx4_en_stats_bitmap*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct mlx4_dev*) ; 
 scalar_t__ FUNC5 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rx_bytes ; 
 int /*<<< orphan*/  rx_dropped ; 
 int /*<<< orphan*/  rx_packets ; 
 int /*<<< orphan*/  tx_bytes ; 
 int /*<<< orphan*/  tx_dropped ; 
 int /*<<< orphan*/  tx_packets ; 

void FUNC7(struct mlx4_dev *dev,
			      struct mlx4_en_stats_bitmap *stats_bitmap,
			      u8 rx_ppp, u8 rx_pause,
			      u8 tx_ppp, u8 tx_pause)
{
	int last_i = 0;

	FUNC6(&stats_bitmap->mutex);
	FUNC2(stats_bitmap->bitmap, NUM_ALL_STATS);

	if (FUNC5(dev)) {
		FUNC1(stats_bitmap->bitmap, last_i +
					 FUNC0(rx_packets), 1);
		FUNC1(stats_bitmap->bitmap, last_i +
					 FUNC0(tx_packets), 1);
		FUNC1(stats_bitmap->bitmap, last_i +
					 FUNC0(rx_bytes), 1);
		FUNC1(stats_bitmap->bitmap, last_i +
					 FUNC0(tx_bytes), 1);
		FUNC1(stats_bitmap->bitmap, last_i +
					 FUNC0(rx_dropped), 1);
		FUNC1(stats_bitmap->bitmap, last_i +
					 FUNC0(tx_dropped), 1);
	} else {
		FUNC1(stats_bitmap->bitmap, last_i, NUM_MAIN_STATS);
	}
	last_i += NUM_MAIN_STATS;

	FUNC1(stats_bitmap->bitmap, last_i, NUM_PORT_STATS);
	last_i += NUM_PORT_STATS;

	if (FUNC4(dev))
		FUNC1(stats_bitmap->bitmap, last_i,
			   NUM_PF_STATS);
	last_i += NUM_PF_STATS;

	FUNC3(dev, stats_bitmap,
					rx_ppp, rx_pause,
					tx_ppp, tx_pause);
	last_i += NUM_FLOW_STATS;

	if (!FUNC5(dev))
		FUNC1(stats_bitmap->bitmap, last_i, NUM_PKT_STATS);
	last_i += NUM_PKT_STATS;

	FUNC1(stats_bitmap->bitmap, last_i, NUM_XDP_STATS);
	last_i += NUM_XDP_STATS;

	if (!FUNC5(dev))
		FUNC1(stats_bitmap->bitmap, last_i, NUM_PHY_STATS);
	last_i += NUM_PHY_STATS;
}