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
struct mm_struct {int dummy; } ;
struct cxl_context {int dummy; } ;
struct copro_slb {int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;

/* Variables and functions */
 int FUNC0 (struct mm_struct*,int /*<<< orphan*/ ,struct copro_slb*) ; 
 int /*<<< orphan*/  FUNC1 (struct cxl_context*,struct copro_slb*) ; 

__attribute__((used)) static int FUNC2(struct cxl_context *ctx, struct mm_struct *mm,
			     u64 ea)
{
	struct copro_slb slb = {0,0};
	int rc;

	if (!(rc = FUNC0(mm, ea, &slb))) {
		FUNC1(ctx, &slb);
	}

	return rc;
}