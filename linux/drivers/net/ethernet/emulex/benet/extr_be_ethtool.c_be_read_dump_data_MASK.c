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
typedef  int /*<<< orphan*/  u32 ;
struct be_adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  LANCER_FW_DUMP_FILE ; 
 int FUNC0 (struct be_adapter*,int /*<<< orphan*/ ,void*) ; 
 scalar_t__ FUNC1 (struct be_adapter*) ; 
 int FUNC2 (struct be_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 

__attribute__((used)) static int FUNC3(struct be_adapter *adapter, u32 dump_len,
			     void *buf)
{
	int status = 0;

	if (FUNC1(adapter))
		status = FUNC2(adapter, LANCER_FW_DUMP_FILE,
					      dump_len, buf);
	else
		status = FUNC0(adapter, dump_len, buf);

	return status;
}