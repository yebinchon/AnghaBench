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
struct ieee80211_hdr {int /*<<< orphan*/  addr2; int /*<<< orphan*/  addr3; int /*<<< orphan*/  frame_control; } ;
struct atmel_private {int /*<<< orphan*/  CurrentBSSID; } ;

/* Variables and functions */
 int IEEE80211_FCTL_FROMDS ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct atmel_private *priv,
				     struct ieee80211_hdr *header)
{
	if (FUNC0(header->frame_control) & IEEE80211_FCTL_FROMDS)
		return FUNC1(header->addr3, priv->CurrentBSSID, 6) == 0;
	else
		return FUNC1(header->addr2, priv->CurrentBSSID, 6) == 0;
}