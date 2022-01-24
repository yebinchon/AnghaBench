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
struct cxl_afu {int dummy; } ;

/* Variables and functions */
 int CXL_MODE_DEDICATED ; 
 int CXL_MODE_DIRECTED ; 
 int FUNC0 (struct cxl_afu*) ; 
 int FUNC1 (struct cxl_afu*) ; 

__attribute__((used)) static int FUNC2(struct cxl_afu *afu, int mode)
{
	if (mode == CXL_MODE_DIRECTED)
		return FUNC0(afu);
	if (mode == CXL_MODE_DEDICATED)
		return FUNC1(afu);
	return 0;
}