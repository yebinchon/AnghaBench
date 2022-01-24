#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int member_0; int member_1; } ;
typedef  TYPE_1__ u8 ;
struct gspca_dev {int dummy; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__**) ; 
 int FUNC1 (struct gspca_dev*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(struct gspca_dev *gspca_dev)
{
	int i;
	int retval = -1;
	static u8 instruction[][2] = {
		{0x05, 0x00},
		{0x7c, 0x00},
		{0x7d, 0x30},
		{0x02, 0x00},
		{0x01, 0x00},
		{0x04, 0x42},
	};

	for (i = 0; i < FUNC0(instruction); i++) {
		FUNC2(60);
		retval = FUNC1(gspca_dev, instruction[i]);
		if (retval < 0)
			return retval;
	}
	FUNC2(60);
	return retval;
}