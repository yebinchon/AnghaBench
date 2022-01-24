#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct cxl_afu {int crs_len; int crs_offset; TYPE_1__* native; int /*<<< orphan*/  adapter; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* link_ok ) (int /*<<< orphan*/ ,struct cxl_afu*) ;} ;
struct TYPE_3__ {int afu_desc_mmio; } ;

/* Variables and functions */
 int EIO ; 
 int ERANGE ; 
 TYPE_2__* cxl_ops ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct cxl_afu*) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(struct cxl_afu *afu, int cr, u64 off, u32 in)
{
	if (FUNC2(!cxl_ops->link_ok(afu->adapter, afu)))
		return -EIO;
	if (FUNC2(off >= afu->crs_len))
		return -ERANGE;
	FUNC0(afu->native->afu_desc_mmio + afu->crs_offset +
		(cr * afu->crs_len) + off, in);
	return 0;
}