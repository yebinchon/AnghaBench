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
struct sk_buff {scalar_t__ cb; } ;
struct mt76_rx_status {int /*<<< orphan*/  wcid; int /*<<< orphan*/  chain_signal; int /*<<< orphan*/  chains; int /*<<< orphan*/  signal; int /*<<< orphan*/  band; int /*<<< orphan*/  nss; int /*<<< orphan*/  rate_idx; int /*<<< orphan*/  bw; int /*<<< orphan*/  encoding; int /*<<< orphan*/  enc_flags; int /*<<< orphan*/  freq; int /*<<< orphan*/  flag; } ;
struct ieee80211_sta {int dummy; } ;
struct ieee80211_rx_status {int /*<<< orphan*/  chain_signal; int /*<<< orphan*/  chains; int /*<<< orphan*/  signal; int /*<<< orphan*/  band; int /*<<< orphan*/  nss; int /*<<< orphan*/  rate_idx; int /*<<< orphan*/  bw; int /*<<< orphan*/  encoding; int /*<<< orphan*/  enc_flags; int /*<<< orphan*/  freq; int /*<<< orphan*/  flag; } ;
typedef  int /*<<< orphan*/  mstat ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct ieee80211_rx_status* FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_rx_status*,int /*<<< orphan*/ ,int) ; 
 struct ieee80211_sta* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct ieee80211_sta *FUNC5(struct sk_buff *skb)
{
	struct ieee80211_rx_status *status = FUNC1(skb);
	struct mt76_rx_status mstat;

	mstat = *((struct mt76_rx_status *)skb->cb);
	FUNC3(status, 0, sizeof(*status));

	status->flag = mstat.flag;
	status->freq = mstat.freq;
	status->enc_flags = mstat.enc_flags;
	status->encoding = mstat.encoding;
	status->bw = mstat.bw;
	status->rate_idx = mstat.rate_idx;
	status->nss = mstat.nss;
	status->band = mstat.band;
	status->signal = mstat.signal;
	status->chains = mstat.chains;

	FUNC0(sizeof(mstat) > sizeof(skb->cb));
	FUNC0(sizeof(status->chain_signal) !=
		     sizeof(mstat.chain_signal));
	FUNC2(status->chain_signal, mstat.chain_signal,
	       sizeof(mstat.chain_signal));

	return FUNC4(mstat.wcid);
}