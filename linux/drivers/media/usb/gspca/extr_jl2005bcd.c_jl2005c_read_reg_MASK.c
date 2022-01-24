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
 int FUNC0 (struct gspca_dev*) ; 
 int FUNC1 (struct gspca_dev*,int*) ; 

__attribute__((used)) static int FUNC2(struct gspca_dev *gspca_dev, unsigned char reg)
{
	int retval;

	static u8 instruction[2] = {0x95, 0x00};
	/* put register to read in byte 1 */
	instruction[1] = reg;
	/* Send the read request */
	retval = FUNC1(gspca_dev, instruction);
	if (retval < 0)
		return retval;
	retval = FUNC0(gspca_dev);

	return retval;
}