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
typedef  int u64 ;
struct niu {int flags; } ;

/* Variables and functions */
 int NIU_FLAGS_MCAST ; 
 int NIU_FLAGS_PROMISC ; 
 int /*<<< orphan*/  XMAC_CONFIG ; 
 int XMAC_CONFIG_HASH_FILTER_EN ; 
 int XMAC_CONFIG_PROMISCUOUS ; 
 int XMAC_CONFIG_RX_MAC_ENABLE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct niu *np, int on)
{
	u64 val = FUNC0(XMAC_CONFIG);

	val &= ~(XMAC_CONFIG_HASH_FILTER_EN |
		 XMAC_CONFIG_PROMISCUOUS);

	if (np->flags & NIU_FLAGS_MCAST)
		val |= XMAC_CONFIG_HASH_FILTER_EN;
	if (np->flags & NIU_FLAGS_PROMISC)
		val |= XMAC_CONFIG_PROMISCUOUS;

	if (on)
		val |= XMAC_CONFIG_RX_MAC_ENABLE;
	else
		val &= ~XMAC_CONFIG_RX_MAC_ENABLE;
	FUNC1(XMAC_CONFIG, val);
}