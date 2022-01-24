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
struct sk_buff_head {int dummy; } ;
struct ieee80211_rx_status {int dummy; } ;
struct ath10k {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sk_buff_head*) ; 
 scalar_t__ FUNC1 (struct ath10k*,struct sk_buff_head*,struct ieee80211_rx_status*) ; 
 scalar_t__ FUNC2 (struct sk_buff_head*) ; 
 scalar_t__ FUNC3 (struct sk_buff_head*) ; 

__attribute__((used)) static void FUNC4(struct ath10k *ar,
				   struct sk_buff_head *amsdu,
				   struct ieee80211_rx_status *rx_status,
				   unsigned long *drop_cnt)
{
	if (FUNC2(amsdu))
		return;

	if (FUNC1(ar, amsdu, rx_status))
		return;

	if (drop_cnt)
		*drop_cnt += FUNC3(amsdu);

	FUNC0(amsdu);
}