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
struct pci_dev {int dummy; } ;
struct cxl_context {int kernelapi; } ;
struct cxl_afu {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct cxl_context* FUNC0 (struct cxl_afu*) ; 
 struct cxl_context* FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct cxl_afu*) ; 
 struct cxl_context* FUNC3 () ; 
 int FUNC4 (struct cxl_context*,struct cxl_afu*,int) ; 
 struct cxl_afu* FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct cxl_context*) ; 

struct cxl_context *FUNC7(struct pci_dev *dev)
{
	struct cxl_afu *afu;
	struct cxl_context  *ctx;
	int rc;

	afu = FUNC5(dev);
	if (FUNC2(afu))
		return FUNC0(afu);

	ctx = FUNC3();
	if (!ctx)
		return FUNC1(-ENOMEM);

	ctx->kernelapi = true;

	/* Make it a slave context.  We can promote it later? */
	rc = FUNC4(ctx, afu, false);
	if (rc)
		goto err_ctx;

	return ctx;

err_ctx:
	FUNC6(ctx);
	return FUNC1(rc);
}