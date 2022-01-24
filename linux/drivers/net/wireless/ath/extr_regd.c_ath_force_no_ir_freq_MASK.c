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
typedef  int /*<<< orphan*/  u16 ;
struct wiphy {int dummy; } ;
struct ieee80211_channel {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ieee80211_channel*) ; 
 struct ieee80211_channel* FUNC1 (struct wiphy*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct wiphy *wiphy, u16 center_freq)
{
	struct ieee80211_channel *ch;

	ch = FUNC1(wiphy, center_freq);
	if (!ch)
		return;

	FUNC0(ch);
}