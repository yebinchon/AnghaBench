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
struct s5p_mfc_dev {int /*<<< orphan*/  curr_ctx; } ;
struct s5p_mfc_ctx {int /*<<< orphan*/  state; int /*<<< orphan*/  num; struct s5p_mfc_dev* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  MFCINST_ERROR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (struct s5p_mfc_ctx*) ; 

__attribute__((used)) static inline int FUNC2(struct s5p_mfc_ctx *ctx)
{
	struct s5p_mfc_dev *dev = ctx->dev;
	int ret;

	dev->curr_ctx = ctx->num;
	ret = FUNC1(ctx);
	if (ret) {
		FUNC0("Failed to alloc frame mem.\n");
		ctx->state = MFCINST_ERROR;
	}
	return ret;
}