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
struct sk_buff {scalar_t__ data; } ;
struct mwifiex_private {TYPE_1__* adapter; } ;
struct ethhdr {int /*<<< orphan*/  h_proto; } ;
struct TYPE_2__ {int /*<<< orphan*/  fw_cap_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  DATA ; 
 scalar_t__ ETH_P_PAE ; 
 scalar_t__ ETH_P_TDLS ; 
 scalar_t__ FUNC0 (struct mwifiex_private*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ MWIFIEX_BSS_ROLE_STA ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC3 (struct sk_buff*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC5(struct mwifiex_private *priv,
			struct sk_buff *skb)
{
	struct ethhdr *eth_hdr = (struct ethhdr *)skb->data;

	if (FUNC4(eth_hdr->h_proto) == ETH_P_PAE ||
	    FUNC3(skb) ||
	    (FUNC0(priv) == MWIFIEX_BSS_ROLE_STA &&
	     FUNC1(priv->adapter->fw_cap_info) &&
	     (FUNC4(eth_hdr->h_proto) == ETH_P_TDLS))) {
		FUNC2(priv->adapter, DATA,
			    "bypass txqueue; eth type %#x, mgmt %d\n",
			     FUNC4(eth_hdr->h_proto),
			     FUNC3(skb));
		return true;
	}

	return false;
}