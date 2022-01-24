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
struct gspca_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct gspca_dev*,int,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct gspca_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct gspca_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tbl_common_0B ; 
 int /*<<< orphan*/  tbl_common_3B ; 

__attribute__((used)) static void FUNC4(struct gspca_dev *gspca_dev)
{
	FUNC3(gspca_dev, tbl_common_0B, FUNC0(tbl_common_0B));
	FUNC2(gspca_dev, tbl_common_3B, FUNC0(tbl_common_3B));
	FUNC1(gspca_dev, 0x40, 1, 0x0041, 0x0000, 0, NULL);
}