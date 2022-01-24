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
struct cxl {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CXL_PSL_FIR1 ; 
 int /*<<< orphan*/  CXL_PSL_FIR2 ; 
 int /*<<< orphan*/  CXL_PSL_FIR_CNTL ; 
 int /*<<< orphan*/  CXL_PSL_TRACE ; 
 int S_IRUSR ; 
 int S_IWUSR ; 
 int /*<<< orphan*/  FUNC0 (struct cxl*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,struct dentry*,int /*<<< orphan*/ ) ; 

void FUNC2(struct cxl *adapter, struct dentry *dir)
{
	FUNC1("fir1", S_IRUSR, dir, FUNC0(adapter, CXL_PSL_FIR1));
	FUNC1("fir2", S_IRUSR, dir, FUNC0(adapter, CXL_PSL_FIR2));
	FUNC1("fir_cntl", S_IRUSR, dir, FUNC0(adapter, CXL_PSL_FIR_CNTL));
	FUNC1("trace", S_IRUSR | S_IWUSR, dir, FUNC0(adapter, CXL_PSL_TRACE));
}