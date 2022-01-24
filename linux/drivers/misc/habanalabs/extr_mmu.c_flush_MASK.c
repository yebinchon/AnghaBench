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
struct hl_ctx {TYPE_2__* hdev; } ;
struct TYPE_4__ {TYPE_1__* asic_funcs; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* read_pte ) (TYPE_2__*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hl_ctx*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC3(struct hl_ctx *ctx)
{
	/* flush all writes from all cores to reach PCI */
	FUNC1();
	ctx->hdev->asic_funcs->read_pte(ctx->hdev, FUNC0(ctx));
}