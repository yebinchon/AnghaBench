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
struct filter_entry {scalar_t__ valid; } ;
struct TYPE_2__ {unsigned int nftids; unsigned int nsftids; struct filter_entry* ftid_tab; } ;
struct adapter {TYPE_1__ tids; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct adapter*,unsigned int) ; 
 int FUNC1 (struct filter_entry*) ; 

int FUNC2(struct adapter *adapter, unsigned int fidx)
{
	struct filter_entry *f;
	int ret;

	if (fidx >= adapter->tids.nftids + adapter->tids.nsftids)
		return -EINVAL;

	f = &adapter->tids.ftid_tab[fidx];
	ret = FUNC1(f);
	if (ret)
		return ret;
	if (f->valid)
		return FUNC0(adapter, fidx);

	return 0;
}