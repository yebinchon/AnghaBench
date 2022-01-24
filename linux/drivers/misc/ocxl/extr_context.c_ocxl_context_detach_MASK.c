#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct ocxl_context {int status; int /*<<< orphan*/  pasid; TYPE_4__* afu; int /*<<< orphan*/  status_mutex; } ;
typedef  enum ocxl_context_status { ____Placeholder_ocxl_context_status } ocxl_context_status ;
struct TYPE_6__ {int dvsec_afu_control_pos; } ;
struct TYPE_8__ {TYPE_3__* fn; int /*<<< orphan*/  afu_control_lock; TYPE_2__ config; } ;
struct TYPE_5__ {int /*<<< orphan*/  parent; } ;
struct TYPE_7__ {int /*<<< orphan*/  link; TYPE_1__ dev; } ;

/* Variables and functions */
 int ATTACHED ; 
 int CLOSED ; 
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct pci_dev*,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct pci_dev* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 

int FUNC7(struct ocxl_context *ctx)
{
	struct pci_dev *dev;
	int afu_control_pos;
	enum ocxl_context_status status;
	int rc;

	FUNC1(&ctx->status_mutex);
	status = ctx->status;
	ctx->status = CLOSED;
	FUNC2(&ctx->status_mutex);
	if (status != ATTACHED)
		return 0;

	dev = FUNC5(ctx->afu->fn->dev.parent);
	afu_control_pos = ctx->afu->config.dvsec_afu_control_pos;

	FUNC1(&ctx->afu->afu_control_lock);
	rc = FUNC3(dev, afu_control_pos, ctx->pasid);
	FUNC2(&ctx->afu->afu_control_lock);
	FUNC6(ctx->pasid, rc);
	if (rc) {
		/*
		 * If we timeout waiting for the AFU to terminate the
		 * pasid, then it's dangerous to clean up the Process
		 * Element entry in the SPA, as it may be referenced
		 * in the future by the AFU. In which case, we would
		 * checkstop because of an invalid PE access (FIR
		 * register 2, bit 42). So leave the PE
		 * defined. Caller shouldn't free the context so that
		 * PASID remains allocated.
		 *
		 * A link reset will be required to cleanup the AFU
		 * and the SPA.
		 */
		if (rc == -EBUSY)
			return rc;
	}
	rc = FUNC4(ctx->afu->fn->link, ctx->pasid);
	if (rc) {
		FUNC0(&dev->dev,
			"Couldn't remove PE entry cleanly: %d\n", rc);
	}
	return 0;
}