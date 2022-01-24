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
struct dentry {int dummy; } ;
struct cxl_afu {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CXL_AFU_DEBUG_An ; 
 int /*<<< orphan*/  CXL_PSL_FIR_SLICE_An ; 
 int /*<<< orphan*/  CXL_PSL_SERR_An ; 
 int /*<<< orphan*/  CXL_PSL_SLICE_TRACE ; 
 int /*<<< orphan*/  CXL_SSTP0_An ; 
 int /*<<< orphan*/  CXL_SSTP1_An ; 
 int S_IRUSR ; 
 int S_IWUSR ; 
 int /*<<< orphan*/  FUNC0 (struct cxl_afu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cxl_afu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,struct dentry*,int /*<<< orphan*/ ) ; 

void FUNC3(struct cxl_afu *afu, struct dentry *dir)
{
	FUNC2("sstp0", S_IRUSR, dir, FUNC1(afu, CXL_SSTP0_An));
	FUNC2("sstp1", S_IRUSR, dir, FUNC1(afu, CXL_SSTP1_An));

	FUNC2("fir", S_IRUSR, dir, FUNC0(afu, CXL_PSL_FIR_SLICE_An));
	FUNC2("serr", S_IRUSR, dir, FUNC0(afu, CXL_PSL_SERR_An));
	FUNC2("afu_debug", S_IRUSR, dir, FUNC0(afu, CXL_AFU_DEBUG_An));
	FUNC2("trace", S_IRUSR | S_IWUSR, dir, FUNC0(afu, CXL_PSL_SLICE_TRACE));
}