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
struct ieee80211_vif {int dummy; } ;
struct ieee80211_sta {scalar_t__ drv_priv; } ;
struct ath_softc {int /*<<< orphan*/  sc_ah; } ;
struct ath_node {int /*<<< orphan*/  key_idx; struct ieee80211_vif* vif; struct ieee80211_sta* sta; struct ath_softc* sc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct ath_node*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_softc*,struct ath_node*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct ath_softc *sc, struct ieee80211_sta *sta,
			    struct ieee80211_vif *vif)
{
	struct ath_node *an;
	an = (struct ath_node *)sta->drv_priv;

	an->sc = sc;
	an->sta = sta;
	an->vif = vif;
	FUNC2(&an->key_idx, 0, sizeof(an->key_idx));

	FUNC1(sc, an);

	FUNC0(sc->sc_ah, an);
}