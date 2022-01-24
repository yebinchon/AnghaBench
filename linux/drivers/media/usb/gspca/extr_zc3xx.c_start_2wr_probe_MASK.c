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
 int /*<<< orphan*/  FUNC0 (struct gspca_dev*,int,int) ; 

__attribute__((used)) static void FUNC1(struct gspca_dev *gspca_dev, int sensor)
{
	FUNC0(gspca_dev, 0x01, 0x0000);
	FUNC0(gspca_dev, sensor, 0x0010);
	FUNC0(gspca_dev, 0x01, 0x0001);
	FUNC0(gspca_dev, 0x03, 0x0012);
	FUNC0(gspca_dev, 0x01, 0x0012);
/*	msleep(2); */
}