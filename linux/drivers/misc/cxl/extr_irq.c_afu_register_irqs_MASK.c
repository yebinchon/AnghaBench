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
typedef  int /*<<< orphan*/  u32 ;
struct cxl_context {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct cxl_context*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cxl_context*) ; 

int FUNC2(struct cxl_context *ctx, u32 count)
{
	int rc;

	rc = FUNC0(ctx, count);
	if (rc)
		return rc;

	FUNC1(ctx);
	return 0;
}