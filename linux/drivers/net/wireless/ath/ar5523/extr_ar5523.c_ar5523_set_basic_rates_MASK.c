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
struct ieee80211_bss_conf {int dummy; } ;
struct ar5523_cmd_rateset {int dummy; } ;
struct ar5523_cmd_rates {int /*<<< orphan*/  rateset; void* size; void* connid; } ;
struct ar5523 {int dummy; } ;
typedef  int /*<<< orphan*/  rates ;

/* Variables and functions */
 int /*<<< orphan*/  WDCMSG_SET_BASIC_RATE ; 
 int FUNC0 (struct ar5523*,int /*<<< orphan*/ ,struct ar5523_cmd_rates*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ar5523*,struct ieee80211_bss_conf*,int /*<<< orphan*/ *,int) ; 
 void* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct ar5523_cmd_rates*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct ar5523 *ar,
				  struct ieee80211_bss_conf *bss)
{
	struct ar5523_cmd_rates rates;

	FUNC3(&rates, 0, sizeof(rates));
	rates.connid = FUNC2(2);		/* XXX */
	rates.size   = FUNC2(sizeof(struct ar5523_cmd_rateset));
	FUNC1(ar, bss, &rates.rateset, true);

	return FUNC0(ar, WDCMSG_SET_BASIC_RATE, &rates,
				sizeof(rates), 0);
}