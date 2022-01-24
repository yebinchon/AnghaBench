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
struct ieee80211_vif {struct ieee80211_txq* txq; } ;
struct ieee80211_txq {scalar_t__ drv_priv; } ;
struct ieee80211_sta {struct ieee80211_txq** txq; } ;
struct ath_node {struct ieee80211_vif* vif; struct ieee80211_sta* sta; } ;
struct ath_atx_tid {int dummy; } ;

/* Variables and functions */
 size_t FUNC0 (struct ieee80211_txq**) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static inline struct ath_atx_tid *
FUNC2(struct ath_node *an, u8 tidno)
{
	struct ieee80211_sta *sta = an->sta;
	struct ieee80211_vif *vif = an->vif;
	struct ieee80211_txq *txq;

	FUNC1(!vif);
	if (sta)
		txq = sta->txq[tidno % FUNC0(sta->txq)];
	else
		txq = vif->txq;

	return (struct ath_atx_tid *) txq->drv_priv;
}