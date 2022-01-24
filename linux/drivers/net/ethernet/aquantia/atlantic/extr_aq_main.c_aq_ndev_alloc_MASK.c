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
struct net_device {int /*<<< orphan*/ * ethtool_ops; int /*<<< orphan*/ * netdev_ops; } ;
struct aq_nic_s {struct net_device* ndev; } ;

/* Variables and functions */
 int /*<<< orphan*/  AQ_CFG_VECS_MAX ; 
 struct net_device* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  aq_ethtool_ops ; 
 int /*<<< orphan*/  aq_ndev_ops ; 
 struct aq_nic_s* FUNC1 (struct net_device*) ; 

struct net_device *FUNC2(void)
{
	struct net_device *ndev = NULL;
	struct aq_nic_s *aq_nic = NULL;

	ndev = FUNC0(sizeof(struct aq_nic_s), AQ_CFG_VECS_MAX);
	if (!ndev)
		return NULL;

	aq_nic = FUNC1(ndev);
	aq_nic->ndev = ndev;
	ndev->netdev_ops = &aq_ndev_ops;
	ndev->ethtool_ops = &aq_ethtool_ops;

	return ndev;
}