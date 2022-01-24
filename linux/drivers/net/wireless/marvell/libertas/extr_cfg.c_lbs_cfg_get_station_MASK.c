#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct wiphy {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  legacy; } ;
struct station_info {int filled; TYPE_3__ txrate; int /*<<< orphan*/  signal; int /*<<< orphan*/  rx_packets; int /*<<< orphan*/  rx_bytes; int /*<<< orphan*/  tx_packets; int /*<<< orphan*/  tx_bytes; } ;
struct net_device {int dummy; } ;
struct lbs_private {scalar_t__ cur_rate; TYPE_2__* dev; } ;
typedef  int /*<<< orphan*/  s8 ;
struct TYPE_9__ {scalar_t__ hw_value; int /*<<< orphan*/  bitrate; } ;
struct TYPE_6__ {int /*<<< orphan*/  rx_packets; int /*<<< orphan*/  rx_bytes; int /*<<< orphan*/  tx_packets; int /*<<< orphan*/  tx_bytes; } ;
struct TYPE_7__ {TYPE_1__ stats; } ;

/* Variables and functions */
 size_t FUNC0 (TYPE_4__*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NL80211_STA_INFO_RX_BYTES ; 
 int /*<<< orphan*/  NL80211_STA_INFO_RX_PACKETS ; 
 int /*<<< orphan*/  NL80211_STA_INFO_SIGNAL ; 
 int /*<<< orphan*/  NL80211_STA_INFO_TX_BITRATE ; 
 int /*<<< orphan*/  NL80211_STA_INFO_TX_BYTES ; 
 int /*<<< orphan*/  NL80211_STA_INFO_TX_PACKETS ; 
 int FUNC2 (struct lbs_private*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_4__* lbs_rates ; 
 struct lbs_private* FUNC3 (struct wiphy*) ; 

__attribute__((used)) static int FUNC4(struct wiphy *wiphy, struct net_device *dev,
			       const u8 *mac, struct station_info *sinfo)
{
	struct lbs_private *priv = FUNC3(wiphy);
	s8 signal, noise;
	int ret;
	size_t i;

	sinfo->filled |= FUNC1(NL80211_STA_INFO_TX_BYTES) |
			 FUNC1(NL80211_STA_INFO_TX_PACKETS) |
			 FUNC1(NL80211_STA_INFO_RX_BYTES) |
			 FUNC1(NL80211_STA_INFO_RX_PACKETS);
	sinfo->tx_bytes = priv->dev->stats.tx_bytes;
	sinfo->tx_packets = priv->dev->stats.tx_packets;
	sinfo->rx_bytes = priv->dev->stats.rx_bytes;
	sinfo->rx_packets = priv->dev->stats.rx_packets;

	/* Get current RSSI */
	ret = FUNC2(priv, &signal, &noise);
	if (ret == 0) {
		sinfo->signal = signal;
		sinfo->filled |= FUNC1(NL80211_STA_INFO_SIGNAL);
	}

	/* Convert priv->cur_rate from hw_value to NL80211 value */
	for (i = 0; i < FUNC0(lbs_rates); i++) {
		if (priv->cur_rate == lbs_rates[i].hw_value) {
			sinfo->txrate.legacy = lbs_rates[i].bitrate;
			sinfo->filled |= FUNC1(NL80211_STA_INFO_TX_BITRATE);
			break;
		}
	}

	return 0;
}