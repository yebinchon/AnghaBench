#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int /*<<< orphan*/  len; } ;
struct il_priv {int dummy; } ;
struct ieee80211_tx_control {int /*<<< orphan*/  sta; } ;
struct ieee80211_hw {struct il_priv* priv; } ;
struct TYPE_2__ {int /*<<< orphan*/  bitrate; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 TYPE_1__* FUNC4 (struct ieee80211_hw*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct il_priv*,int /*<<< orphan*/ ,struct sk_buff*) ; 

__attribute__((used)) static void
FUNC6(struct ieee80211_hw *hw,
	       struct ieee80211_tx_control *control,
	       struct sk_buff *skb)
{
	struct il_priv *il = hw->priv;

	FUNC0("enter\n");

	FUNC1("dev->xmit(%d bytes) at rate 0x%02x\n", skb->len,
	     FUNC4(hw, FUNC2(skb))->bitrate);

	if (FUNC5(il, control->sta, skb))
		FUNC3(skb);

	FUNC0("leave\n");
}