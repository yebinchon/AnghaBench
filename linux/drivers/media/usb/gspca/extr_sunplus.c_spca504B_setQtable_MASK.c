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
 int /*<<< orphan*/  FUNC0 (struct gspca_dev*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct gspca_dev*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct gspca_dev*) ; 

__attribute__((used)) static void FUNC3(struct gspca_dev *gspca_dev)
{
	FUNC1(gspca_dev, 0x26, 0, 0, 3);
	FUNC0(gspca_dev, 0x26, 0, 1);
	FUNC2(gspca_dev);
}