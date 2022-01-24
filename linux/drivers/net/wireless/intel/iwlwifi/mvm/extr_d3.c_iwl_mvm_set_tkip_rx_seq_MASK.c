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
struct tkip_sc {int dummy; } ;
struct ieee80211_key_seq {int dummy; } ;
struct ieee80211_key_conf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int IEEE80211_NUM_TIDS ; 
 int IWL_NUM_RSC ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_key_conf*,int,struct ieee80211_key_seq*) ; 
 int /*<<< orphan*/  FUNC2 (struct tkip_sc*,struct ieee80211_key_seq*) ; 

__attribute__((used)) static void FUNC3(struct tkip_sc *scs,
				    struct ieee80211_key_conf *key)
{
	int tid;

	FUNC0(IWL_NUM_RSC != IEEE80211_NUM_TIDS);

	for (tid = 0; tid < IWL_NUM_RSC; tid++) {
		struct ieee80211_key_seq seq = {};

		FUNC2(&scs[tid], &seq);
		FUNC1(key, tid, &seq);
	}
}