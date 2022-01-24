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
typedef  int /*<<< orphan*/  u32 ;
struct dsaf_tbl_tcam_mcast_cfg {int dummy; } ;
struct dsaf_tbl_tcam_data {int dummy; } ;
struct dsaf_device {int /*<<< orphan*/  tcam_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dsaf_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dsaf_device*,struct dsaf_tbl_tcam_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct dsaf_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct dsaf_device*,struct dsaf_tbl_tcam_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct dsaf_device*,struct dsaf_tbl_tcam_mcast_cfg*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(
	struct dsaf_device *dsaf_dev, u32 address,
	struct dsaf_tbl_tcam_data *ptbl_tcam_data,
	struct dsaf_tbl_tcam_data *ptbl_tcam_mask,
	struct dsaf_tbl_tcam_mcast_cfg *ptbl_tcam_mcast)
{
	FUNC5(&dsaf_dev->tcam_lock);

	/*Write Addr*/
	FUNC0(dsaf_dev, address);
	/*Write Tcam Data*/
	FUNC1(dsaf_dev, ptbl_tcam_data);
	/*Write Tcam Mcast*/
	FUNC4(dsaf_dev, ptbl_tcam_mcast);
	/* Write Match Data */
	if (ptbl_tcam_mask)
		FUNC3(dsaf_dev, ptbl_tcam_mask);

	/* Write Puls */
	FUNC2(dsaf_dev);

	FUNC6(&dsaf_dev->tcam_lock);
}