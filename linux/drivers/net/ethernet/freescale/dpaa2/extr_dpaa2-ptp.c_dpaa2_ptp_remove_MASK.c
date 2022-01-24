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
struct ptp_qoriq {int dummy; } ;
struct device {int dummy; } ;
struct fsl_mc_device {int /*<<< orphan*/  mc_io; int /*<<< orphan*/  mc_handle; struct device dev; } ;

/* Variables and functions */
 struct ptp_qoriq* FUNC0 (struct device*) ; 
 int dpaa2_phc_index ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct fsl_mc_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ptp_qoriq*) ; 

__attribute__((used)) static int FUNC5(struct fsl_mc_device *mc_dev)
{
	struct device *dev = &mc_dev->dev;
	struct ptp_qoriq *ptp_qoriq;

	ptp_qoriq = FUNC0(dev);

	dpaa2_phc_index = -1;
	FUNC4(ptp_qoriq);

	FUNC2(mc_dev);
	FUNC1(mc_dev->mc_io, 0, mc_dev->mc_handle);
	FUNC3(mc_dev->mc_io);

	return 0;
}