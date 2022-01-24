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
typedef  scalar_t__ u8 ;
struct mlx4_en_stats_bitmap {int /*<<< orphan*/  mutex; int /*<<< orphan*/  bitmap; } ;
struct TYPE_2__ {int flags2; } ;
struct mlx4_dev {TYPE_1__ caps; } ;

/* Variables and functions */
 int MLX4_DEV_CAP_FLAG2_FLOWSTATS_EN ; 
 scalar_t__ NUM_FLOW_PRIORITY_STATS_RX ; 
 scalar_t__ NUM_FLOW_PRIORITY_STATS_TX ; 
 int /*<<< orphan*/  NUM_FLOW_STATS ; 
 scalar_t__ NUM_FLOW_STATS_RX ; 
 scalar_t__ NUM_FLOW_STATS_TX ; 
 int NUM_MAIN_STATS ; 
 int NUM_PF_STATS ; 
 int NUM_PORT_STATS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct mlx4_dev *dev,
				     struct mlx4_en_stats_bitmap *stats_bitmap,
				     u8 rx_ppp, u8 rx_pause,
				     u8 tx_ppp, u8 tx_pause)
{
	int last_i = NUM_MAIN_STATS + NUM_PORT_STATS + NUM_PF_STATS;

	if (!FUNC2(dev) &&
	    (dev->caps.flags2 & MLX4_DEV_CAP_FLAG2_FLOWSTATS_EN)) {
		FUNC3(&stats_bitmap->mutex);
		FUNC0(stats_bitmap->bitmap, last_i, NUM_FLOW_STATS);

		if (rx_ppp)
			FUNC1(stats_bitmap->bitmap, last_i,
				   NUM_FLOW_PRIORITY_STATS_RX);
		last_i += NUM_FLOW_PRIORITY_STATS_RX;

		if (rx_pause && !(rx_ppp))
			FUNC1(stats_bitmap->bitmap, last_i,
				   NUM_FLOW_STATS_RX);
		last_i += NUM_FLOW_STATS_RX;

		if (tx_ppp)
			FUNC1(stats_bitmap->bitmap, last_i,
				   NUM_FLOW_PRIORITY_STATS_TX);
		last_i += NUM_FLOW_PRIORITY_STATS_TX;

		if (tx_pause && !(tx_ppp))
			FUNC1(stats_bitmap->bitmap, last_i,
				   NUM_FLOW_STATS_TX);
		last_i += NUM_FLOW_STATS_TX;

		FUNC4(&stats_bitmap->mutex);
	}
}