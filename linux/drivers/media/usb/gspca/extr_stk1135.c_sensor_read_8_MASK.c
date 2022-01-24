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
typedef  int u8 ;
struct gspca_dev {int dummy; } ;

/* Variables and functions */
 scalar_t__ STK1135_REG_SBUSR ; 
 scalar_t__ STK1135_REG_SICTL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (struct gspca_dev*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct gspca_dev*,scalar_t__,int) ; 
 scalar_t__ FUNC3 (struct gspca_dev*) ; 

__attribute__((used)) static u8 FUNC4(struct gspca_dev *gspca_dev, u8 addr)
{
	FUNC2(gspca_dev, STK1135_REG_SBUSR, addr);
	/* begin read */
	FUNC2(gspca_dev, STK1135_REG_SICTL, 0x20);
	/* wait until finished */
	if (FUNC3(gspca_dev)) {
		FUNC0("Sensor read failed\n");
		return 0;
	}

	return FUNC1(gspca_dev, STK1135_REG_SBUSR + 1);
}