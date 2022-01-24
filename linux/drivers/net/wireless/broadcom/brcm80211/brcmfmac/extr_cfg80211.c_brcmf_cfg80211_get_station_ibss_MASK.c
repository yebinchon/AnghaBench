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
typedef  int u32 ;
struct TYPE_2__ {int legacy; } ;
struct station_info {int filled; int signal; void* tx_failed; void* tx_packets; void* rx_dropped_misc; void* rx_packets; TYPE_1__ txrate; } ;
struct brcmf_scb_val_le {int /*<<< orphan*/  tx_bad_pkt; int /*<<< orphan*/  tx_good_pkt; int /*<<< orphan*/  rx_bad_pkt; int /*<<< orphan*/  rx_good_pkt; int /*<<< orphan*/  val; } ;
struct brcmf_pub {int dummy; } ;
struct brcmf_pktcnt_le {int /*<<< orphan*/  tx_bad_pkt; int /*<<< orphan*/  tx_good_pkt; int /*<<< orphan*/  rx_bad_pkt; int /*<<< orphan*/  rx_good_pkt; int /*<<< orphan*/  val; } ;
struct brcmf_if {struct brcmf_pub* drvr; } ;
typedef  int /*<<< orphan*/  scbval ;
typedef  scalar_t__ s32 ;
typedef  int /*<<< orphan*/  pktcnt ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BRCMF_C_GET_GET_PKTCNTS ; 
 int /*<<< orphan*/  BRCMF_C_GET_RATE ; 
 int /*<<< orphan*/  BRCMF_C_GET_RSSI ; 
 int /*<<< orphan*/  NL80211_STA_INFO_RX_DROP_MISC ; 
 int /*<<< orphan*/  NL80211_STA_INFO_RX_PACKETS ; 
 int /*<<< orphan*/  NL80211_STA_INFO_SIGNAL ; 
 int /*<<< orphan*/  NL80211_STA_INFO_TX_BITRATE ; 
 int /*<<< orphan*/  NL80211_STA_INFO_TX_FAILED ; 
 int /*<<< orphan*/  NL80211_STA_INFO_TX_PACKETS ; 
 int /*<<< orphan*/  FUNC1 (struct brcmf_pub*,char*,scalar_t__) ; 
 scalar_t__ FUNC2 (struct brcmf_if*,int /*<<< orphan*/ ,struct brcmf_scb_val_le*,int) ; 
 scalar_t__ FUNC3 (struct brcmf_if*,int /*<<< orphan*/ ,int*) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct brcmf_scb_val_le*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static s32
FUNC6(struct brcmf_if *ifp,
				struct station_info *sinfo)
{
	struct brcmf_pub *drvr = ifp->drvr;
	struct brcmf_scb_val_le scbval;
	struct brcmf_pktcnt_le pktcnt;
	s32 err;
	u32 rate;
	u32 rssi;

	/* Get the current tx rate */
	err = FUNC3(ifp, BRCMF_C_GET_RATE, &rate);
	if (err < 0) {
		FUNC1(drvr, "BRCMF_C_GET_RATE error (%d)\n", err);
		return err;
	}
	sinfo->filled |= FUNC0(NL80211_STA_INFO_TX_BITRATE);
	sinfo->txrate.legacy = rate * 5;

	FUNC5(&scbval, 0, sizeof(scbval));
	err = FUNC2(ifp, BRCMF_C_GET_RSSI, &scbval,
				     sizeof(scbval));
	if (err) {
		FUNC1(drvr, "BRCMF_C_GET_RSSI error (%d)\n", err);
		return err;
	}
	rssi = FUNC4(scbval.val);
	sinfo->filled |= FUNC0(NL80211_STA_INFO_SIGNAL);
	sinfo->signal = rssi;

	err = FUNC2(ifp, BRCMF_C_GET_GET_PKTCNTS, &pktcnt,
				     sizeof(pktcnt));
	if (err) {
		FUNC1(drvr, "BRCMF_C_GET_GET_PKTCNTS error (%d)\n", err);
		return err;
	}
	sinfo->filled |= FUNC0(NL80211_STA_INFO_RX_PACKETS) |
			 FUNC0(NL80211_STA_INFO_RX_DROP_MISC) |
			 FUNC0(NL80211_STA_INFO_TX_PACKETS) |
			 FUNC0(NL80211_STA_INFO_TX_FAILED);
	sinfo->rx_packets = FUNC4(pktcnt.rx_good_pkt);
	sinfo->rx_dropped_misc = FUNC4(pktcnt.rx_bad_pkt);
	sinfo->tx_packets = FUNC4(pktcnt.tx_good_pkt);
	sinfo->tx_failed  = FUNC4(pktcnt.tx_bad_pkt);

	return 0;
}