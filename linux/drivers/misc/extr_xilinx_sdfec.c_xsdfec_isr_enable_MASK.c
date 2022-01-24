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
typedef  int u32 ;
struct xsdfec_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  XSDFEC_IDR_ADDR ; 
 int /*<<< orphan*/  XSDFEC_IER_ADDR ; 
 int /*<<< orphan*/  XSDFEC_IMR_ADDR ; 
 int XSDFEC_ISR_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct xsdfec_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct xsdfec_dev*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct xsdfec_dev *xsdfec, bool enable)
{
	u32 mask_read;

	if (enable) {
		/* Enable */
		FUNC2(xsdfec, XSDFEC_IER_ADDR, XSDFEC_ISR_MASK);
		mask_read = FUNC1(xsdfec, XSDFEC_IMR_ADDR);
		if (mask_read & XSDFEC_ISR_MASK) {
			FUNC0(xsdfec->dev,
				"SDFEC enabling irq with IER failed");
			return -EIO;
		}
	} else {
		/* Disable */
		FUNC2(xsdfec, XSDFEC_IDR_ADDR, XSDFEC_ISR_MASK);
		mask_read = FUNC1(xsdfec, XSDFEC_IMR_ADDR);
		if ((mask_read & XSDFEC_ISR_MASK) != XSDFEC_ISR_MASK) {
			FUNC0(xsdfec->dev,
				"SDFEC disabling irq with IDR failed");
			return -EIO;
		}
	}
	return 0;
}