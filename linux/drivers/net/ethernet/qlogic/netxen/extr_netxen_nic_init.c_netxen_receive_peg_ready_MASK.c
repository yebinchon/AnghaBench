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
typedef  scalar_t__ u32 ;
struct netxen_adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRB_RCVPEG_STATE ; 
 int EIO ; 
 scalar_t__ FUNC0 (struct netxen_adapter*,int /*<<< orphan*/ ) ; 
 scalar_t__ PHAN_PEG_RCV_INITIALIZED ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__) ; 

__attribute__((used)) static int
FUNC3(struct netxen_adapter *adapter)
{
	u32 val = 0;
	int retries = 2000;

	do {
		val = FUNC0(adapter, CRB_RCVPEG_STATE);

		if (val == PHAN_PEG_RCV_INITIALIZED)
			return 0;

		FUNC1(10);

	} while (--retries);

	FUNC2("Receive Peg initialization not complete, state: 0x%x.\n", val);
	return -EIO;
}