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
typedef  int u64 ;
typedef  int u32 ;
typedef  int u16 ;
struct cxl_afu {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct cxl_afu*,int,int,int*) ; 
 int FUNC2 (struct cxl_afu*,int,int,int) ; 

__attribute__((used)) static int FUNC3(struct cxl_afu *afu, int cr, u64 off, u16 in)
{
	u64 aligned_off = off & ~0x3L;
	u32 val32, mask, shift;
	int rc;

	rc = FUNC1(afu, cr, aligned_off, &val32);
	if (rc)
		return rc;
	shift = (off & 0x3) * 8;
	FUNC0(shift == 24);
	mask = 0xffff << shift;
	val32 = (val32 & ~mask) | (in << shift);

	rc = FUNC2(afu, cr, aligned_off, val32);
	return rc;
}