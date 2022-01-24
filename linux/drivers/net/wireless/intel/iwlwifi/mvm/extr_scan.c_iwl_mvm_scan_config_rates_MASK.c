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
struct iwl_mvm {TYPE_1__* nvm_data; } ;
struct ieee80211_supported_band {int n_bitrates; TYPE_2__* bitrates; } ;
typedef  int /*<<< orphan*/  __le32 ;
struct TYPE_4__ {int /*<<< orphan*/  hw_value; } ;
struct TYPE_3__ {struct ieee80211_supported_band* bands; } ;

/* Variables and functions */
 size_t NL80211_BAND_2GHZ ; 
 size_t NL80211_BAND_5GHZ ; 
 unsigned int FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static __le32 FUNC3(struct iwl_mvm *mvm)
{
	struct ieee80211_supported_band *band;
	unsigned int rates = 0;
	int i;

	band = &mvm->nvm_data->bands[NL80211_BAND_2GHZ];
	for (i = 0; i < band->n_bitrates; i++)
		rates |= FUNC2(band->bitrates[i].hw_value);
	band = &mvm->nvm_data->bands[NL80211_BAND_5GHZ];
	for (i = 0; i < band->n_bitrates; i++)
		rates |= FUNC2(band->bitrates[i].hw_value);

	/* Set both basic rates and supported rates */
	rates |= FUNC0(rates);

	return FUNC1(rates);
}