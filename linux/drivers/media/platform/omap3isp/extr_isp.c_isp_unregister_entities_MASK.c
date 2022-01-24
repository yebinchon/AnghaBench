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
struct isp_device {int /*<<< orphan*/  media_dev; int /*<<< orphan*/  v4l2_dev; int /*<<< orphan*/  isp_hist; int /*<<< orphan*/  isp_af; int /*<<< orphan*/  isp_aewb; int /*<<< orphan*/  isp_res; int /*<<< orphan*/  isp_prev; int /*<<< orphan*/  isp_ccdc; int /*<<< orphan*/  isp_ccp2; int /*<<< orphan*/  isp_csi2a; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct isp_device *isp)
{
	FUNC1(&isp->media_dev);

	FUNC4(&isp->isp_csi2a);
	FUNC3(&isp->isp_ccp2);
	FUNC2(&isp->isp_ccdc);
	FUNC5(&isp->isp_prev);
	FUNC6(&isp->isp_res);
	FUNC7(&isp->isp_aewb);
	FUNC7(&isp->isp_af);
	FUNC7(&isp->isp_hist);

	FUNC8(&isp->v4l2_dev);
	FUNC0(&isp->media_dev);
}