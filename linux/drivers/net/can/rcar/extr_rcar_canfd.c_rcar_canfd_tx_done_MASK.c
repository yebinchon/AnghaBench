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
typedef  int u32 ;
struct rcar_canfd_channel {int channel; size_t tx_tail; size_t tx_head; int /*<<< orphan*/  base; int /*<<< orphan*/  tx_lock; scalar_t__* tx_len; } ;
struct net_device_stats {int /*<<< orphan*/  tx_bytes; int /*<<< orphan*/  tx_packets; } ;
struct net_device {struct net_device_stats stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAN_LED_EVENT_TX ; 
 int /*<<< orphan*/  RCANFD_CFFIFO_IDX ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int) ; 
 int RCANFD_CFSTS_CFTXIF ; 
 size_t RCANFD_FIFO_DEPTH ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,int /*<<< orphan*/ ) ; 
 struct rcar_canfd_channel* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC10(struct net_device *ndev)
{
	struct rcar_canfd_channel *priv = FUNC4(ndev);
	struct net_device_stats *stats = &ndev->stats;
	u32 sts;
	unsigned long flags;
	u32 ch = priv->channel;

	do {
		u8 unsent, sent;

		sent = priv->tx_tail % RCANFD_FIFO_DEPTH;
		stats->tx_packets++;
		stats->tx_bytes += priv->tx_len[sent];
		priv->tx_len[sent] = 0;
		FUNC2(ndev, sent);

		FUNC8(&priv->tx_lock, flags);
		priv->tx_tail++;
		sts = FUNC6(priv->base,
				      FUNC0(ch, RCANFD_CFFIFO_IDX));
		unsent = FUNC1(sts);

		/* Wake producer only when there is room */
		if (unsent != RCANFD_FIFO_DEPTH)
			FUNC5(ndev);

		if (priv->tx_head - priv->tx_tail <= unsent) {
			FUNC9(&priv->tx_lock, flags);
			break;
		}
		FUNC9(&priv->tx_lock, flags);

	} while (1);

	/* Clear interrupt */
	FUNC7(priv->base, FUNC0(ch, RCANFD_CFFIFO_IDX),
			 sts & ~RCANFD_CFSTS_CFTXIF);
	FUNC3(ndev, CAN_LED_EVENT_TX);
}