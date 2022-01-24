#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
struct cxl_afu {int /*<<< orphan*/  dev; TYPE_1__* guest; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int /*<<< orphan*/  handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  CXL_AFU_ERR_An ; 
 int /*<<< orphan*/  CXL_PSL_DSISR_An ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (struct cxl_afu*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int*) ; 
 int FUNC3 (struct cxl_afu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *data)
{
	struct cxl_afu *afu = data;
	int rc;
	u64 serr, afu_error, dsisr;

	rc = FUNC2(afu->guest->handle, &serr);
	if (rc) {
		FUNC4(&afu->dev, "Couldn't read PSL_SERR_An: %d\n", rc);
		return IRQ_HANDLED;
	}
	afu_error = FUNC3(afu, CXL_AFU_ERR_An);
	dsisr = FUNC3(afu, CXL_PSL_DSISR_An);
	FUNC0(afu, serr);
	FUNC4(&afu->dev, "AFU_ERR_An: 0x%.16llx\n", afu_error);
	FUNC4(&afu->dev, "PSL_DSISR_An: 0x%.16llx\n", dsisr);

	rc = FUNC1(afu->guest->handle, serr);
	if (rc)
		FUNC4(&afu->dev, "Couldn't ack slice error interrupt: %d\n",
			rc);

	return IRQ_HANDLED;
}