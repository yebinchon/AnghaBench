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
typedef  int /*<<< orphan*/  u8 ;
struct sk_buff {int dummy; } ;
struct ieee80211_rx_status {int dummy; } ;
struct ar9170 {int /*<<< orphan*/  hw; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct ar9170*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ar9170*,int /*<<< orphan*/ *,int) ; 
 struct sk_buff* FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct ieee80211_rx_status*,int) ; 

__attribute__((used)) static int FUNC6(struct ar9170 *ar, u8 *buf, int len,
				struct ieee80211_rx_status *status)
{
	struct sk_buff *skb;

	/* (driver) frame trap handler
	 *
	 * Because power-saving mode handing has to be implemented by
	 * the driver/firmware. We have to check each incoming beacon
	 * from the associated AP, if there's new data for us (either
	 * broadcast/multicast or unicast) we have to react quickly.
	 *
	 * So, if you have you want to add additional frame trap
	 * handlers, this would be the perfect place!
	 */

	FUNC2(ar, buf, len);

	FUNC1(ar, buf, len);

	skb = FUNC3(buf, len);
	if (!skb)
		return -ENOMEM;

	FUNC5(FUNC0(skb), status, sizeof(*status));
	FUNC4(ar->hw, skb);
	return 0;
}