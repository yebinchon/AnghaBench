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
struct iwl_lq_sta {int /*<<< orphan*/  active_mimo3_rate; int /*<<< orphan*/  active_mimo2_rate; int /*<<< orphan*/  active_siso_rate; int /*<<< orphan*/  active_legacy_rate; } ;
struct ieee80211_hdr {int dummy; } ;
typedef  enum iwl_table_type { ____Placeholder_iwl_table_type } iwl_table_type ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static u16 FUNC3(struct iwl_lq_sta *lq_sta,
				  struct ieee80211_hdr *hdr,
				  enum iwl_table_type rate_type)
{
	if (FUNC0(rate_type)) {
		return lq_sta->active_legacy_rate;
	} else {
		if (FUNC2(rate_type))
			return lq_sta->active_siso_rate;
		else if (FUNC1(rate_type))
			return lq_sta->active_mimo2_rate;
		else
			return lq_sta->active_mimo3_rate;
	}
}