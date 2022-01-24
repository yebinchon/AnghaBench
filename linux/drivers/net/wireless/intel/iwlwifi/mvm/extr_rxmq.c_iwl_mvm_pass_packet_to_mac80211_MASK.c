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
struct sk_buff {int dummy; } ;
struct napi_struct {int dummy; } ;
struct iwl_mvm {int /*<<< orphan*/  hw; } ;
struct ieee80211_sta {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct ieee80211_sta*,struct sk_buff*,struct napi_struct*) ; 
 scalar_t__ FUNC1 (struct iwl_mvm*,struct sk_buff*,int,struct ieee80211_sta*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 

__attribute__((used)) static void FUNC3(struct iwl_mvm *mvm,
					    struct napi_struct *napi,
					    struct sk_buff *skb, int queue,
					    struct ieee80211_sta *sta,
					    bool csi)
{
	if (FUNC1(mvm, skb, queue, sta))
		FUNC2(skb);
	else
		FUNC0(mvm->hw, sta, skb, napi);
}