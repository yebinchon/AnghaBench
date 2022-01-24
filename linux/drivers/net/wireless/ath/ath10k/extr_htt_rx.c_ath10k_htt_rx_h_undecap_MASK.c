#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct sk_buff {scalar_t__ data; } ;
struct ieee80211_rx_status {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  info1; } ;
struct TYPE_4__ {TYPE_1__ common; } ;
struct htt_rx_desc {TYPE_2__ msdu_start; } ;
struct ath10k {int dummy; } ;
typedef  enum rx_msdu_decap_format { ____Placeholder_rx_msdu_decap_format } rx_msdu_decap_format ;
typedef  enum htt_rx_mpdu_encrypt_type { ____Placeholder_htt_rx_mpdu_encrypt_type } htt_rx_mpdu_encrypt_type ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  RX_MSDU_DECAP_8023_SNAP_LLC 131 
#define  RX_MSDU_DECAP_ETHERNET2_DIX 130 
#define  RX_MSDU_DECAP_NATIVE_WIFI 129 
#define  RX_MSDU_DECAP_RAW 128 
 int /*<<< orphan*/  RX_MSDU_START_INFO1_DECAP_FORMAT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ath10k*,struct sk_buff*,struct ieee80211_rx_status*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ath10k*,struct sk_buff*,struct ieee80211_rx_status*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ath10k*,struct sk_buff*,struct ieee80211_rx_status*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct ath10k*,struct sk_buff*,struct ieee80211_rx_status*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC6(struct ath10k *ar,
				    struct sk_buff *msdu,
				    struct ieee80211_rx_status *status,
				    u8 first_hdr[64],
				    enum htt_rx_mpdu_encrypt_type enctype,
				    bool is_decrypted)
{
	struct htt_rx_desc *rxd;
	enum rx_msdu_decap_format decap;

	/* First msdu's decapped header:
	 * [802.11 header] <-- padded to 4 bytes long
	 * [crypto param] <-- padded to 4 bytes long
	 * [amsdu header] <-- only if A-MSDU
	 * [rfc1042/llc]
	 *
	 * Other (2nd, 3rd, ..) msdu's decapped header:
	 * [amsdu header] <-- only if A-MSDU
	 * [rfc1042/llc]
	 */

	rxd = (void *)msdu->data - sizeof(*rxd);
	decap = FUNC0(FUNC1(rxd->msdu_start.common.info1),
		   RX_MSDU_START_INFO1_DECAP_FORMAT);

	switch (decap) {
	case RX_MSDU_DECAP_RAW:
		FUNC4(ar, msdu, status, enctype,
					    is_decrypted, first_hdr);
		break;
	case RX_MSDU_DECAP_NATIVE_WIFI:
		FUNC3(ar, msdu, status, first_hdr,
					      enctype);
		break;
	case RX_MSDU_DECAP_ETHERNET2_DIX:
		FUNC2(ar, msdu, status, first_hdr, enctype);
		break;
	case RX_MSDU_DECAP_8023_SNAP_LLC:
		FUNC5(ar, msdu, status, first_hdr,
					     enctype);
		break;
	}
}