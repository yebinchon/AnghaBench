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
struct dsaf_tbl_tcam_ucast_cfg {int dummy; } ;
struct dsaf_tbl_tcam_data {int tbl_tcam_data_high; int tbl_tcam_data_low; } ;
struct dsaf_device {int /*<<< orphan*/  tcam_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dsaf_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dsaf_device*,struct dsaf_tbl_tcam_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct dsaf_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct dsaf_device*,struct dsaf_tbl_tcam_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct dsaf_device*,struct dsaf_tbl_tcam_ucast_cfg*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct dsaf_device *dsaf_dev,
				       u32 address,
				       struct dsaf_tbl_tcam_data *tcam_data,
				       struct dsaf_tbl_tcam_data *tcam_mask,
				       struct dsaf_tbl_tcam_ucast_cfg *tcam_uc)
{
	FUNC5(&dsaf_dev->tcam_lock);
	FUNC0(dsaf_dev, address);
	FUNC1(dsaf_dev, tcam_data);
	FUNC4(dsaf_dev, tcam_uc);
	FUNC3(dsaf_dev, tcam_mask);
	FUNC2(dsaf_dev);

	/*Restore Match Data*/
	tcam_mask->tbl_tcam_data_high = 0xffffffff;
	tcam_mask->tbl_tcam_data_low = 0xffffffff;
	FUNC3(dsaf_dev, tcam_mask);

	FUNC6(&dsaf_dev->tcam_lock);
}