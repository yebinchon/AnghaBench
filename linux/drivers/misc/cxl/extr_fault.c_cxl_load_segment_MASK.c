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
struct cxl_sste {void* esid_data; void* vsid_data; } ;
struct cxl_context {int sstp; int /*<<< orphan*/  sste_lock; } ;
struct copro_slb {int /*<<< orphan*/  esid; int /*<<< orphan*/  vsid; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 struct cxl_sste* FUNC1 (struct cxl_context*,struct copro_slb*) ; 
 int /*<<< orphan*/  FUNC2 (char*,struct cxl_sste*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct cxl_context*,struct cxl_sste*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct cxl_context *ctx, struct copro_slb *slb)
{
	/* mask is the group index, we search primary and secondary here. */
	struct cxl_sste *sste;
	unsigned long flags;

	FUNC3(&ctx->sste_lock, flags);
	sste = FUNC1(ctx, slb);
	if (!sste)
		goto out_unlock;

	FUNC2("CXL Populating SST[%li]: %#llx %#llx\n",
			sste - ctx->sstp, slb->vsid, slb->esid);
	FUNC5(ctx, sste - ctx->sstp, slb->esid, slb->vsid);

	sste->vsid_data = FUNC0(slb->vsid);
	sste->esid_data = FUNC0(slb->esid);
out_unlock:
	FUNC4(&ctx->sste_lock, flags);
}