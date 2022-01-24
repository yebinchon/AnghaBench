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
typedef  int u32 ;
struct TYPE_2__ {int /*<<< orphan*/  delay; int /*<<< orphan*/  wk; } ;
struct iwl_fw_runtime {TYPE_1__ timestamp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iwl_fw_runtime*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_fw_runtime*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC5(struct iwl_fw_runtime *fwrt, u32 delay)
{
	FUNC0(fwrt,
		 "starting timestamp_marker trigger with delay: %us\n",
		 delay);

	FUNC1(fwrt);

	fwrt->timestamp.delay = FUNC2(delay * 1000);

	FUNC4(&fwrt->timestamp.wk,
			      FUNC3(fwrt->timestamp.delay));
}