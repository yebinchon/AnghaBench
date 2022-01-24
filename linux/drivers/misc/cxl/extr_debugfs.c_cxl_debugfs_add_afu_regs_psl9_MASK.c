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
 int /*<<< orphan*/  CXL_PSL_SERR_An ; 
 int /*<<< orphan*/  S_IRUSR ; 
 int /*<<< orphan*/  FUNC0 (struct cxl_afu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,struct dentry*,int /*<<< orphan*/ ) ; 

void FUNC2(struct cxl_afu *afu, struct dentry *dir)
{
	FUNC1("serr", S_IRUSR, dir, FUNC0(afu, CXL_PSL_SERR_An));
}