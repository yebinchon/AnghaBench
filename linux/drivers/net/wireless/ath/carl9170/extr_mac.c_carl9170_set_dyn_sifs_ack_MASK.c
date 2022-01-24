#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct ar9170 {TYPE_3__* hw; } ;
struct TYPE_6__ {TYPE_1__* chan; } ;
struct TYPE_8__ {TYPE_2__ chandef; } ;
struct TYPE_7__ {TYPE_4__ conf; } ;
struct TYPE_5__ {scalar_t__ band; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR9170_MAC_REG_DYNAMIC_SIFS_ACK ; 
 scalar_t__ NL80211_BAND_2GHZ ; 
 int FUNC0 (struct ar9170*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (TYPE_4__*) ; 

int FUNC2(struct ar9170 *ar)
{
	u32 val;

	if (FUNC1(&ar->hw->conf))
		val = 0x010a;
	else {
		if (ar->hw->conf.chandef.chan->band == NL80211_BAND_2GHZ)
			val = 0x105;
		else
			val = 0x104;
	}

	return FUNC0(ar, AR9170_MAC_REG_DYNAMIC_SIFS_ACK, val);
}