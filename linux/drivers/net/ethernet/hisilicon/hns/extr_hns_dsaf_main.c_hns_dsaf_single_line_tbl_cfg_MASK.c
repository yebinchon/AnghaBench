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
struct dsaf_tbl_line_cfg {int dummy; } ;
struct dsaf_device {int /*<<< orphan*/  tcam_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dsaf_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dsaf_device*,struct dsaf_tbl_line_cfg*) ; 
 int /*<<< orphan*/  FUNC2 (struct dsaf_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(
	struct dsaf_device *dsaf_dev,
	u32 address, struct dsaf_tbl_line_cfg *ptbl_line)
{
	FUNC3(&dsaf_dev->tcam_lock);

	/*Write Addr*/
	FUNC0(dsaf_dev, address);

	/*Write Line*/
	FUNC1(dsaf_dev, ptbl_line);

	/*Write Plus*/
	FUNC2(dsaf_dev);

	FUNC4(&dsaf_dev->tcam_lock);
}