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
 int /*<<< orphan*/  CXL_PSL9_DEBUG ; 
 int /*<<< orphan*/  CXL_PSL9_FIR1 ; 
 int /*<<< orphan*/  CXL_PSL9_FIR_CNTL ; 
 int /*<<< orphan*/  CXL_PSL9_FIR_MASK ; 
 int /*<<< orphan*/  CXL_PSL9_TRACECFG ; 
 int /*<<< orphan*/  CXL_XSL9_DBG ; 
 int S_IRUSR ; 
 int S_IWUSR ; 
 int /*<<< orphan*/  FUNC0 (struct cxl*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,struct dentry*,int /*<<< orphan*/ ) ; 

void FUNC2(struct cxl *adapter, struct dentry *dir)
{
	FUNC1("fir1", S_IRUSR, dir, FUNC0(adapter, CXL_PSL9_FIR1));
	FUNC1("fir_mask", 0400, dir,
			      FUNC0(adapter, CXL_PSL9_FIR_MASK));
	FUNC1("fir_cntl", S_IRUSR, dir, FUNC0(adapter, CXL_PSL9_FIR_CNTL));
	FUNC1("trace", S_IRUSR | S_IWUSR, dir, FUNC0(adapter, CXL_PSL9_TRACECFG));
	FUNC1("debug", 0600, dir,
			      FUNC0(adapter, CXL_PSL9_DEBUG));
	FUNC1("xsl-debug", 0600, dir,
			      FUNC0(adapter, CXL_XSL9_DBG));
}