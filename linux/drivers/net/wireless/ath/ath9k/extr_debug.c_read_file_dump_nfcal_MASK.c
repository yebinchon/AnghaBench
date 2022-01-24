#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u32 ;
struct seq_file {int /*<<< orphan*/  private; } ;
struct ieee80211_hw {struct ath_softc* priv; } ;
struct ieee80211_conf {int dummy; } ;
struct ath_softc {TYPE_2__* cur_chan; struct ath_hw* sc_ah; } ;
struct ath_hw {int rxchainmask; int /*<<< orphan*/  noise; } ;
struct ath_common {TYPE_3__* hw; } ;
struct ath9k_nfcal_hist {int invalidNFcount; int /*<<< orphan*/ * nfCalBuffer; int /*<<< orphan*/  privNF; } ;
struct TYPE_6__ {struct ieee80211_conf conf; } ;
struct TYPE_4__ {struct ath9k_nfcal_hist* nfCalHist; } ;
struct TYPE_5__ {TYPE_1__ caldata; } ;

/* Variables and functions */
 int AR5416_MAX_CHAINS ; 
 int AR_PHY_CCA_FILTERWINDOW_LENGTH ; 
 int NUM_NF_READINGS ; 
 struct ath_common* FUNC0 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_conf*) ; 
 struct ieee80211_hw* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct seq_file*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC4 (struct seq_file*,char*) ; 

__attribute__((used)) static int FUNC5(struct seq_file *file, void *data)
{
	struct ieee80211_hw *hw = FUNC2(file->private);
	struct ath_softc *sc = hw->priv;
	struct ath_hw *ah = sc->sc_ah;
	struct ath9k_nfcal_hist *h = sc->cur_chan->caldata.nfCalHist;
	struct ath_common *common = FUNC0(ah);
	struct ieee80211_conf *conf = &common->hw->conf;
	u32 i, j;
	u8 chainmask = (ah->rxchainmask << 3) | ah->rxchainmask;
	u8 nread;

	FUNC3(file, "Channel Noise Floor : %d\n", ah->noise);
	FUNC4(file, "Chain | privNF | # Readings | NF Readings\n");
	for (i = 0; i < NUM_NF_READINGS; i++) {
		if (!(chainmask & (1 << i)) ||
		    ((i >= AR5416_MAX_CHAINS) && !FUNC1(conf)))
			continue;

		nread = AR_PHY_CCA_FILTERWINDOW_LENGTH - h[i].invalidNFcount;
		FUNC3(file, " %d\t %d\t %d\t\t", i, h[i].privNF, nread);
		for (j = 0; j < nread; j++)
			FUNC3(file, " %d", h[i].nfCalBuffer[j]);
		FUNC4(file, "\n");
	}

	return 0;
}