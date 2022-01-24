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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct sk_buff {int /*<<< orphan*/  pkt_type; int /*<<< orphan*/  protocol; scalar_t__ data; } ;
struct rfmon_header {int flags; int rate; int rssi; int /*<<< orphan*/  freq; int /*<<< orphan*/  clock; } ;
struct avs_80211_1_header {void* encoding; void* preamble; void* ssi_noise; void* ssi_signal; void* ssi_type; void* priority; void* antenna; void* datarate; void* channel; void* phytype; void* hosttime; void* mactime; void* length; void* version; } ;
struct TYPE_7__ {int noise; } ;
struct TYPE_8__ {TYPE_2__ qual; } ;
struct TYPE_9__ {TYPE_3__ local_iwstatistics; TYPE_1__* ndev; } ;
typedef  TYPE_4__ islpci_private ;
struct TYPE_6__ {scalar_t__ type; } ;

/* Variables and functions */
 scalar_t__ ARPHRD_IEEE80211_PRISM ; 
 int /*<<< orphan*/  ETH_P_802_2 ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int P80211CAPTURE_VERSION ; 
 int /*<<< orphan*/  PACKET_OTHERHOST ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC7 (struct sk_buff*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,int) ; 
 struct avs_80211_1_header* FUNC10 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*) ; 

__attribute__((used)) static inline int
FUNC12(islpci_private *priv, struct sk_buff **skb)
{
	/* The card reports full 802.11 packets but with a 20 bytes
	 * header and without the FCS. But there a is a bit that
	 * indicates if the packet is corrupted :-) */
	struct rfmon_header *hdr = (struct rfmon_header *) (*skb)->data;

	if (hdr->flags & 0x01)
		/* This one is bad. Drop it ! */
		return -1;
	if (priv->ndev->type == ARPHRD_IEEE80211_PRISM) {
		struct avs_80211_1_header *avs;
		/* extract the relevant data from the header */
		u32 clock = FUNC6(hdr->clock);
		u8 rate = hdr->rate;
		u16 freq = FUNC5(hdr->freq);
		u8 rssi = hdr->rssi;

		FUNC9(*skb, sizeof (struct rfmon_header));

		if (FUNC8(*skb) < sizeof (struct avs_80211_1_header)) {
			struct sk_buff *newskb = FUNC7(*skb,
								 sizeof (struct
									 avs_80211_1_header),
								 0, GFP_ATOMIC);
			if (newskb) {
				FUNC3(*skb);
				*skb = newskb;
			} else
				return -1;
			/* This behavior is not very subtile... */
		}

		/* make room for the new header and fill it. */
		avs = FUNC10(*skb, sizeof(struct avs_80211_1_header));

		avs->version = FUNC1(P80211CAPTURE_VERSION);
		avs->length = FUNC1(sizeof (struct avs_80211_1_header));
		avs->mactime = FUNC2(clock);
		avs->hosttime = FUNC2(jiffies);
		avs->phytype = FUNC1(6);	/*OFDM: 6 for (g), 8 for (a) */
		avs->channel = FUNC1(FUNC0(freq));
		avs->datarate = FUNC1(rate * 5);
		avs->antenna = FUNC1(0);	/*unknown */
		avs->priority = FUNC1(0);	/*unknown */
		avs->ssi_type = FUNC1(3);	/*2: dBm, 3: raw RSSI */
		avs->ssi_signal = FUNC1(rssi & 0x7f);
		avs->ssi_noise = FUNC1(priv->local_iwstatistics.qual.noise);	/*better than 'undefined', I assume */
		avs->preamble = FUNC1(0);	/*unknown */
		avs->encoding = FUNC1(0);	/*unknown */
	} else
		FUNC9(*skb, sizeof (struct rfmon_header));

	(*skb)->protocol = FUNC4(ETH_P_802_2);
	FUNC11(*skb);
	(*skb)->pkt_type = PACKET_OTHERHOST;

	return 0;
}