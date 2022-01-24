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
struct net_device {int dummy; } ;
struct dynpcc_info {scalar_t__ cnt; void* attempt; void* cur; } ;
struct jme_adapter {int /*<<< orphan*/  jme_rx; int /*<<< orphan*/  flags; struct dynpcc_info dpi; } ;
struct ethtool_coalesce {scalar_t__ use_adaptive_rx_coalesce; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  JME_FLAG_POLL ; 
 void* PCC_P1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct jme_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct jme_adapter*,void*) ; 
 struct jme_adapter* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  netif_receive_skb ; 
 scalar_t__ FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  netif_rx ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC7(struct net_device *netdev, struct ethtool_coalesce *ecmd)
{
	struct jme_adapter *jme = FUNC3(netdev);
	struct dynpcc_info *dpi = &(jme->dpi);

	if (FUNC4(netdev))
		return -EBUSY;

	if (ecmd->use_adaptive_rx_coalesce &&
	    FUNC6(JME_FLAG_POLL, &jme->flags)) {
		FUNC0(JME_FLAG_POLL, &jme->flags);
		jme->jme_rx = netif_rx;
		dpi->cur		= PCC_P1;
		dpi->attempt		= PCC_P1;
		dpi->cnt		= 0;
		FUNC2(jme, PCC_P1);
		FUNC1(jme);
	} else if (!(ecmd->use_adaptive_rx_coalesce) &&
		   !(FUNC6(JME_FLAG_POLL, &jme->flags))) {
		FUNC5(JME_FLAG_POLL, &jme->flags);
		jme->jme_rx = netif_receive_skb;
		FUNC1(jme);
	}

	return 0;
}