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
typedef  unsigned long u32 ;
struct mlx4_en_priv {unsigned long sample_interval; int rx_ring_num; unsigned long* last_moder_packets; unsigned long* last_moder_bytes; int rx_usecs_low; int rx_usecs_high; int* last_moder_time; scalar_t__ rx_frames; scalar_t__ last_moder_jiffies; struct mlx4_en_cq** rx_cq; TYPE_1__** rx_ring; int /*<<< orphan*/  pkt_rate_high; int /*<<< orphan*/  pkt_rate_low; int /*<<< orphan*/  adaptive_rx_coal; } ;
struct mlx4_en_cq {scalar_t__ moder_cnt; int moder_time; } ;
struct TYPE_2__ {int /*<<< orphan*/  bytes; int /*<<< orphan*/  packets; } ;

/* Variables and functions */
 unsigned long HZ ; 
 unsigned long MLX4_EN_AVG_PKT_SMALL ; 
 unsigned long MLX4_EN_RX_RATE_THRESH ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx4_en_priv*,char*,int) ; 
 scalar_t__ jiffies ; 
 int FUNC2 (struct mlx4_en_priv*,struct mlx4_en_cq*) ; 

__attribute__((used)) static void FUNC3(struct mlx4_en_priv *priv)
{
	unsigned long period = (unsigned long) (jiffies - priv->last_moder_jiffies);
	u32 pkt_rate_high, pkt_rate_low;
	struct mlx4_en_cq *cq;
	unsigned long packets;
	unsigned long rate;
	unsigned long avg_pkt_size;
	unsigned long rx_packets;
	unsigned long rx_bytes;
	unsigned long rx_pkt_diff;
	int moder_time;
	int ring, err;

	if (!priv->adaptive_rx_coal || period < priv->sample_interval * HZ)
		return;

	pkt_rate_low = FUNC0(priv->pkt_rate_low);
	pkt_rate_high = FUNC0(priv->pkt_rate_high);

	for (ring = 0; ring < priv->rx_ring_num; ring++) {
		rx_packets = FUNC0(priv->rx_ring[ring]->packets);
		rx_bytes = FUNC0(priv->rx_ring[ring]->bytes);

		rx_pkt_diff = rx_packets - priv->last_moder_packets[ring];
		packets = rx_pkt_diff;
		rate = packets * HZ / period;
		avg_pkt_size = packets ? (rx_bytes -
				priv->last_moder_bytes[ring]) / packets : 0;

		/* Apply auto-moderation only when packet rate
		 * exceeds a rate that it matters */
		if (rate > (MLX4_EN_RX_RATE_THRESH / priv->rx_ring_num) &&
		    avg_pkt_size > MLX4_EN_AVG_PKT_SMALL) {
			if (rate <= pkt_rate_low)
				moder_time = priv->rx_usecs_low;
			else if (rate >= pkt_rate_high)
				moder_time = priv->rx_usecs_high;
			else
				moder_time = (rate - pkt_rate_low) *
					(priv->rx_usecs_high - priv->rx_usecs_low) /
					(pkt_rate_high - pkt_rate_low) +
					priv->rx_usecs_low;
		} else {
			moder_time = priv->rx_usecs_low;
		}

		cq = priv->rx_cq[ring];
		if (moder_time != priv->last_moder_time[ring] ||
		    cq->moder_cnt != priv->rx_frames) {
			priv->last_moder_time[ring] = moder_time;
			cq->moder_time = moder_time;
			cq->moder_cnt = priv->rx_frames;
			err = FUNC2(priv, cq);
			if (err)
				FUNC1(priv, "Failed modifying moderation for cq:%d\n",
				       ring);
		}
		priv->last_moder_packets[ring] = rx_packets;
		priv->last_moder_bytes[ring] = rx_bytes;
	}

	priv->last_moder_jiffies = jiffies;
}