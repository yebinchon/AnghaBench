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
typedef  int u8 ;
struct ieee80211_hdr {int /*<<< orphan*/  frame_control; } ;

/* Variables and functions */
 int IEEE80211_QOS_CTL_TID_MASK ; 
 int* FUNC0 (struct ieee80211_hdr*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,size_t,char*,int,...) ; 
 char** tid_to_ac ; 

__attribute__((used)) static char *FUNC3(struct ieee80211_hdr *hdr, char *out, size_t size)
{
	u8 *qc;
	int tid;

	if (!FUNC1(hdr->frame_control))
		return "";

	qc = FUNC0(hdr);
	tid = *qc & IEEE80211_QOS_CTL_TID_MASK;
	if (tid < 8)
		FUNC2(out, size, "tid %d (%s)", tid, tid_to_ac[tid]);
	else
		FUNC2(out, size, "tid %d", tid);

	return out;
}