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
typedef  int __u8 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gspca_dev*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct gspca_dev*,int*) ; 
 int FUNC3 (struct gspca_dev*) ; 

__attribute__((used)) static void FUNC4(struct gspca_dev *gspca_dev)
{
	int result;
	__u8 data[6];

	result = FUNC3(gspca_dev);
	if (result < 0)
		FUNC0(gspca_dev, "Camera Stop read failed\n");

	FUNC1(data, 0, 6);
	data[0] = 0x14;
	result = FUNC2(gspca_dev, data);
	if (result < 0)
		FUNC0(gspca_dev, "Camera Stop command failed\n");
}