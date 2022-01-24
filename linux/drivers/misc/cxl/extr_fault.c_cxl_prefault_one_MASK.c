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
struct cxl_context {int /*<<< orphan*/  pid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cxl_context*,struct mm_struct*,int /*<<< orphan*/ ) ; 
 struct mm_struct* FUNC1 (struct cxl_context*) ; 
 int /*<<< orphan*/  FUNC2 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct cxl_context *ctx, u64 ea)
{
	struct mm_struct *mm;

	mm = FUNC1(ctx);
	if (mm == NULL) {
		FUNC4("cxl_prefault_one unable to get mm %i\n",
			 FUNC3(ctx->pid));
		return;
	}

	FUNC0(ctx, mm, ea);

	FUNC2(mm);
}