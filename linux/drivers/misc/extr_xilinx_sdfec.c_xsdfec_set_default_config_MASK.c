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
struct TYPE_2__ {int /*<<< orphan*/  code; } ;
struct xsdfec_dev {TYPE_1__ config; } ;

/* Variables and functions */
 int /*<<< orphan*/  XSDFEC_FEC_CODE_ADDR ; 
 int /*<<< orphan*/  FUNC0 (struct xsdfec_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct xsdfec_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct xsdfec_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct xsdfec_dev *xsdfec)
{
	/* Ensure registers are aligned with core configuration */
	FUNC2(xsdfec, XSDFEC_FEC_CODE_ADDR, xsdfec->config.code);
	FUNC1(xsdfec);
	FUNC0(xsdfec);

	return 0;
}