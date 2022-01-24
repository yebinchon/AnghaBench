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
typedef  int u32 ;
struct iwl_trans {int dummy; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 scalar_t__ IWL_POLL_INTERVAL ; 
 int FUNC0 (struct iwl_trans*,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 

int FUNC2(struct iwl_trans *trans, u32 addr,
		      u32 bits, u32 mask, int timeout)
{
	int t = 0;

	do {
		if ((FUNC0(trans, addr) & mask) == (bits & mask))
			return t;
		FUNC1(IWL_POLL_INTERVAL);
		t += IWL_POLL_INTERVAL;
	} while (t < timeout);

	return -ETIMEDOUT;
}