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
struct net_device {int dummy; } ;
struct filter_entry {scalar_t__ locked; } ;
struct TYPE_2__ {struct filter_entry* ftid_tab; scalar_t__ nftids; scalar_t__ sftid_base; } ;
struct adapter {TYPE_1__ tids; } ;

/* Variables and functions */
 int FUNC0 (struct adapter*,unsigned int) ; 
 struct adapter* FUNC1 (struct net_device const*) ; 

int FUNC2(const struct net_device *dev, unsigned int stid,
		unsigned int queue, bool ipv6)
{
	struct filter_entry *f;
	struct adapter *adap;

	adap = FUNC1(dev);

	/* Adjust stid to correct filter index */
	stid -= adap->tids.sftid_base;
	stid += adap->tids.nftids;

	f = &adap->tids.ftid_tab[stid];
	/* Unlock the filter */
	f->locked = 0;

	return FUNC0(adap, stid);
}