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
struct netdev_phys_item_id {int /*<<< orphan*/  id; int /*<<< orphan*/  id_len; } ;
struct net_device {int dummy; } ;
struct lio_vf_rep_desc {struct net_device* parent_ndev; } ;
struct TYPE_2__ {int /*<<< orphan*/  hw_addr; } ;
struct lio {TYPE_1__ linfo; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 struct lio* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void*) ; 
 struct lio_vf_rep_desc* FUNC2 (struct net_device*) ; 

__attribute__((used)) static int FUNC3(struct net_device *dev,
				     struct netdev_phys_item_id *ppid)
{
	struct lio_vf_rep_desc *vf_rep = FUNC2(dev);
	struct net_device *parent_ndev = vf_rep->parent_ndev;
	struct lio *lio = FUNC0(parent_ndev);

	ppid->id_len = ETH_ALEN;
	FUNC1(ppid->id, (void *)&lio->linfo.hw_addr + 2);

	return 0;
}