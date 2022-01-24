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
typedef  size_t u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct iwl_mvm_baid_data {unsigned long timeout; unsigned long last_rx; } ;
struct iwl_mvm {int /*<<< orphan*/ * baid_map; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iwl_mvm*,char*,size_t,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (unsigned long) ; 
 unsigned long jiffies ; 
 struct iwl_mvm_baid_data* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (scalar_t__,unsigned long) ; 

__attribute__((used)) static void FUNC6(struct iwl_mvm *mvm,
				    u32 reorder_data, u8 baid)
{
	unsigned long now = jiffies;
	unsigned long timeout;
	struct iwl_mvm_baid_data *data;

	FUNC3();

	data = FUNC2(mvm->baid_map[baid]);
	if (!data) {
		FUNC0(mvm,
			     "Got valid BAID but no baid allocated, bypass the re-ordering buffer. Baid %d reorder 0x%x\n",
			      baid, reorder_data);
		goto out;
	}

	if (!data->timeout)
		goto out;

	timeout = data->timeout;
	/*
	 * Do not update last rx all the time to avoid cache bouncing
	 * between the rx queues.
	 * Update it every timeout. Worst case is the session will
	 * expire after ~ 2 * timeout, which doesn't matter that much.
	 */
	if (FUNC5(data->last_rx + FUNC1(timeout), now))
		/* Update is atomic */
		data->last_rx = now;

out:
	FUNC4();
}