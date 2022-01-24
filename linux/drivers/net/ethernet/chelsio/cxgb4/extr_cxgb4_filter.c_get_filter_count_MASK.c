#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
struct filter_entry {unsigned int tid; int /*<<< orphan*/  valid; } ;
struct TYPE_4__ {int /*<<< orphan*/  chip; } ;
struct TYPE_3__ {unsigned int ntids; int nftids; int nsftids; struct filter_entry* ftid_tab; struct filter_entry** tid_tab; } ;
struct adapter {int /*<<< orphan*/  win0_lock; TYPE_2__ params; TYPE_1__ tids; } ;
typedef  int /*<<< orphan*/  be64_count ;
typedef  int /*<<< orphan*/  be64_byte_count ;
typedef  int /*<<< orphan*/  be32_count ;
typedef  int /*<<< orphan*/  __be64 ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int E2BIG ; 
 int EINVAL ; 
 int /*<<< orphan*/  MEMWIN_NIC ; 
 int /*<<< orphan*/  MEM_EDC0 ; 
 int /*<<< orphan*/  T4_MEMORY_READ ; 
 unsigned int TCB_SIZE ; 
 int /*<<< orphan*/  TP_CMM_TCB_BASE_A ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct adapter*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 unsigned int FUNC7 (struct adapter*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct adapter *adapter, unsigned int fidx,
			    u64 *pkts, u64 *bytes, bool hash)
{
	unsigned int tcb_base, tcbaddr;
	unsigned int word_offset;
	struct filter_entry *f;
	__be64 be64_byte_count;
	int ret;

	tcb_base = FUNC7(adapter, TP_CMM_TCB_BASE_A);
	if (FUNC2(adapter) && hash) {
		if (fidx < adapter->tids.ntids) {
			f = adapter->tids.tid_tab[fidx];
			if (!f)
				return -EINVAL;
		} else {
			return -E2BIG;
		}
	} else {
		if ((fidx != (adapter->tids.nftids +
			      adapter->tids.nsftids - 1)) &&
		    fidx >= adapter->tids.nftids)
			return -E2BIG;

		f = &adapter->tids.ftid_tab[fidx];
		if (!f->valid)
			return -EINVAL;
	}
	tcbaddr = tcb_base + f->tid * TCB_SIZE;

	FUNC4(&adapter->win0_lock);
	if (FUNC3(adapter->params.chip)) {
		__be64 be64_count;

		/* T4 doesn't maintain byte counts in hw */
		*bytes = 0;

		/* Get pkts */
		word_offset = 4;
		ret = FUNC6(adapter, MEMWIN_NIC, MEM_EDC0,
				   tcbaddr + (word_offset * sizeof(__be32)),
				   sizeof(be64_count),
				   (__be32 *)&be64_count,
				   T4_MEMORY_READ);
		if (ret < 0)
			goto out;
		*pkts = FUNC1(be64_count);
	} else {
		__be32 be32_count;

		/* Get bytes */
		word_offset = 4;
		ret = FUNC6(adapter, MEMWIN_NIC, MEM_EDC0,
				   tcbaddr + (word_offset * sizeof(__be32)),
				   sizeof(be64_byte_count),
				   &be64_byte_count,
				   T4_MEMORY_READ);
		if (ret < 0)
			goto out;
		*bytes = FUNC1(be64_byte_count);

		/* Get pkts */
		word_offset = 6;
		ret = FUNC6(adapter, MEMWIN_NIC, MEM_EDC0,
				   tcbaddr + (word_offset * sizeof(__be32)),
				   sizeof(be32_count),
				   &be32_count,
				   T4_MEMORY_READ);
		if (ret < 0)
			goto out;
		*pkts = (u64)FUNC0(be32_count);
	}

out:
	FUNC5(&adapter->win0_lock);
	return ret;
}