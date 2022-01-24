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
struct ieee80211_bss_conf {int aid; int /*<<< orphan*/  bssid; } ;
struct ar5523_cmd_set_associd {int /*<<< orphan*/  bssid; void* timoffset; void* associd; void* defaultrateix; } ;
struct ar5523 {int dummy; } ;
typedef  int /*<<< orphan*/  associd ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  WDCMSG_WRITE_ASSOCID ; 
 int FUNC0 (struct ar5523*,int /*<<< orphan*/ ,struct ar5523_cmd_set_associd*,int,int /*<<< orphan*/ ) ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ar5523_cmd_set_associd*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct ar5523 *ar,
				struct ieee80211_bss_conf *bss)
{
	struct ar5523_cmd_set_associd associd;

	FUNC3(&associd, 0, sizeof(associd));
	associd.defaultrateix = FUNC1(0);	/* XXX */
	associd.associd = FUNC1(bss->aid);
	associd.timoffset = FUNC1(0x3b);	/* XXX */
	FUNC2(associd.bssid, bss->bssid, ETH_ALEN);
	return FUNC0(ar, WDCMSG_WRITE_ASSOCID, &associd,
				sizeof(associd), 0);
}