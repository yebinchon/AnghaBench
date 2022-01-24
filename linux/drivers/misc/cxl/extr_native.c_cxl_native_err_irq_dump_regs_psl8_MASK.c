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
typedef  int /*<<< orphan*/  u64 ;
struct cxl {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CXL_PSL_FIR1 ; 
 int /*<<< orphan*/  CXL_PSL_FIR2 ; 
 int /*<<< orphan*/  FUNC0 (struct cxl*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2(struct cxl *adapter)
{
	u64 fir1, fir2;

	fir1 = FUNC0(adapter, CXL_PSL_FIR1);
	fir2 = FUNC0(adapter, CXL_PSL_FIR2);
	FUNC1(&adapter->dev,
		 "PSL_FIR1: 0x%016llx\nPSL_FIR2: 0x%016llx\n",
		 fir1, fir2);
}