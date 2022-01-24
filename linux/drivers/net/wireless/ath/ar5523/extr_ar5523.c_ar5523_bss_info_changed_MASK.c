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
typedef  int u32 ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {struct ar5523* priv; } ;
struct ieee80211_bss_conf {scalar_t__ assoc; } ;
struct ar5523 {int /*<<< orphan*/  mutex; int /*<<< orphan*/  flags; int /*<<< orphan*/  stat_work; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR5523_CONNECTED ; 
 int BSS_CHANGED_ASSOC ; 
 int /*<<< orphan*/  HZ ; 
 int /*<<< orphan*/  UATH_LED_LINK ; 
 int /*<<< orphan*/  UATH_LED_OFF ; 
 int /*<<< orphan*/  UATH_LED_ON ; 
 int FUNC0 (struct ar5523*,struct ieee80211_vif*,struct ieee80211_bss_conf*) ; 
 int /*<<< orphan*/  FUNC1 (struct ar5523*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct ar5523*,char*) ; 
 int FUNC3 (struct ar5523*,struct ieee80211_bss_conf*) ; 
 int /*<<< orphan*/  FUNC4 (struct ar5523*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct ar5523*,struct ieee80211_bss_conf*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct ieee80211_hw*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC12(struct ieee80211_hw *hw,
				    struct ieee80211_vif *vif,
				    struct ieee80211_bss_conf *bss,
				    u32 changed)
{
	struct ar5523 *ar = hw->priv;
	int error;

	FUNC1(ar, "bss_info_changed called\n");
	FUNC9(&ar->mutex);

	if (!(changed & BSS_CHANGED_ASSOC))
		goto out_unlock;

	if (bss->assoc) {
		error = FUNC0(ar, vif, bss);
		if (error) {
			FUNC2(ar, "could not create connection\n");
			goto out_unlock;
		}

		error = FUNC3(ar, bss);
		if (error) {
			FUNC2(ar, "could not set negotiated rate set\n");
			goto out_unlock;
		}

		error = FUNC5(ar, bss);
		if (error) {
			FUNC2(ar, "could not set association\n");
			goto out_unlock;
		}

		/* turn link LED on */
		FUNC4(ar, UATH_LED_LINK, UATH_LED_ON);
		FUNC11(AR5523_CONNECTED, &ar->flags);
		FUNC8(hw, &ar->stat_work, HZ);

	} else {
		FUNC6(&ar->stat_work);
		FUNC7(AR5523_CONNECTED, &ar->flags);
		FUNC4(ar, UATH_LED_LINK, UATH_LED_OFF);
	}

out_unlock:
	FUNC10(&ar->mutex);

}