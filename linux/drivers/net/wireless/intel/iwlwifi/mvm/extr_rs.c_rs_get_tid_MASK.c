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
 int IWL_MAX_TID_COUNT ; 
 int* FUNC0 (struct ieee80211_hdr*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static u8 FUNC3(struct ieee80211_hdr *hdr)
{
	u8 tid = IWL_MAX_TID_COUNT;

	if (FUNC1(hdr->frame_control)) {
		u8 *qc = FUNC0(hdr);
		tid = qc[0] & 0xf;
	}

	if (FUNC2(tid > IWL_MAX_TID_COUNT))
		tid = IWL_MAX_TID_COUNT;

	return tid;
}