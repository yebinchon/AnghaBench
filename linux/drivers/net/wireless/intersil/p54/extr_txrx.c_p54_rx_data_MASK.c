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
typedef  int u8 ;
typedef  int u64 ;
typedef  int u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct sk_buff {scalar_t__ data; } ;
struct p54_rx_data {int rate; int flags; scalar_t__ decrypt_status; int /*<<< orphan*/  len; scalar_t__* align; int /*<<< orphan*/  tsf32; int /*<<< orphan*/  antenna; int /*<<< orphan*/  rssi; int /*<<< orphan*/  freq; } ;
struct p54_common {scalar_t__ mode; int tsf_low32; int /*<<< orphan*/  work; TYPE_4__* hw; scalar_t__ tsf_high32; } ;
struct ieee80211_rx_status {int rate_idx; scalar_t__ band; int mactime; int /*<<< orphan*/  boottime_ns; int /*<<< orphan*/  flag; int /*<<< orphan*/  antenna; int /*<<< orphan*/  freq; int /*<<< orphan*/  enc_flags; int /*<<< orphan*/  signal; } ;
struct ieee80211_hdr {int /*<<< orphan*/  frame_control; } ;
typedef  int /*<<< orphan*/  __le16 ;
struct TYPE_7__ {TYPE_1__* chan; } ;
struct TYPE_8__ {int flags; TYPE_2__ chandef; } ;
struct TYPE_9__ {TYPE_3__ conf; } ;
struct TYPE_6__ {scalar_t__ band; } ;

/* Variables and functions */
 int IEEE80211_CONF_PS ; 
 struct ieee80211_rx_status* FUNC0 (struct sk_buff*) ; 
 scalar_t__ NL80211_BAND_5GHZ ; 
 scalar_t__ NL80211_IFTYPE_UNSPECIFIED ; 
 scalar_t__ P54_DECRYPT_FAIL_MICHAEL ; 
 scalar_t__ P54_DECRYPT_FAIL_TKIP ; 
 scalar_t__ P54_DECRYPT_OK ; 
 int /*<<< orphan*/  P54_HDR_FLAG_DATA_ALIGN ; 
 int /*<<< orphan*/  P54_HDR_FLAG_DATA_IN_FCS_GOOD ; 
 int /*<<< orphan*/  P54_STATISTICS_UPDATE ; 
 int /*<<< orphan*/  RX_ENC_FLAG_SHORTPRE ; 
 int /*<<< orphan*/  RX_FLAG_DECRYPTED ; 
 int /*<<< orphan*/  RX_FLAG_MACTIME_END ; 
 int /*<<< orphan*/  RX_FLAG_MMIC_ERROR ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct p54_common*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC11 (struct p54_common*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*,size_t) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int) ; 

__attribute__((used)) static int FUNC15(struct p54_common *priv, struct sk_buff *skb)
{
	struct p54_rx_data *hdr = (struct p54_rx_data *) skb->data;
	struct ieee80211_rx_status *rx_status = FUNC0(skb);
	u16 freq = FUNC7(hdr->freq);
	size_t header_len = sizeof(*hdr);
	u32 tsf32;
	__le16 fc;
	u8 rate = hdr->rate & 0xf;

	/*
	 * If the device is in a unspecified state we have to
	 * ignore all data frames. Else we could end up with a
	 * nasty crash.
	 */
	if (FUNC14(priv->mode == NL80211_IFTYPE_UNSPECIFIED))
		return 0;

	if (!(hdr->flags & FUNC1(P54_HDR_FLAG_DATA_IN_FCS_GOOD)))
		return 0;

	if (hdr->decrypt_status == P54_DECRYPT_OK)
		rx_status->flag |= RX_FLAG_DECRYPTED;
	if ((hdr->decrypt_status == P54_DECRYPT_FAIL_MICHAEL) ||
	    (hdr->decrypt_status == P54_DECRYPT_FAIL_TKIP))
		rx_status->flag |= RX_FLAG_MMIC_ERROR;

	rx_status->signal = FUNC11(priv, hdr->rssi);
	if (hdr->rate & 0x10)
		rx_status->enc_flags |= RX_ENC_FLAG_SHORTPRE;
	if (priv->hw->conf.chandef.chan->band == NL80211_BAND_5GHZ)
		rx_status->rate_idx = (rate < 4) ? 0 : rate - 4;
	else
		rx_status->rate_idx = rate;

	rx_status->freq = freq;
	rx_status->band =  priv->hw->conf.chandef.chan->band;
	rx_status->antenna = hdr->antenna;

	tsf32 = FUNC8(hdr->tsf32);
	if (tsf32 < priv->tsf_low32)
		priv->tsf_high32++;
	rx_status->mactime = ((u64)priv->tsf_high32) << 32 | tsf32;
	priv->tsf_low32 = tsf32;

	/* LMAC API Page 10/29 - s_lm_data_in - clock
	 * "usec accurate timestamp of hardware clock
	 * at end of frame (before OFDM SIFS EOF padding"
	 */
	rx_status->flag |= RX_FLAG_MACTIME_END;

	if (hdr->flags & FUNC1(P54_HDR_FLAG_DATA_ALIGN))
		header_len += hdr->align[0];

	FUNC12(skb, header_len);
	FUNC13(skb, FUNC7(hdr->len));

	fc = ((struct ieee80211_hdr *)skb->data)->frame_control;
	if (FUNC3(fc) || FUNC2(fc))
		rx_status->boottime_ns = FUNC6();

	if (FUNC14(priv->hw->conf.flags & IEEE80211_CONF_PS))
		FUNC10(priv, skb);

	FUNC5(priv->hw, skb);

	FUNC4(priv->hw, &priv->work,
			   FUNC9(P54_STATISTICS_UPDATE));

	return -1;
}