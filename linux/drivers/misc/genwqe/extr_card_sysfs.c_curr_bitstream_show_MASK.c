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
struct genwqe_dev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  IO_SLU_BITSTREAM ; 
 int FUNC0 (struct genwqe_dev*,int /*<<< orphan*/ ) ; 
 struct genwqe_dev* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev,
				   struct device_attribute *attr, char *buf)
{
	int curr_bitstream;
	struct genwqe_dev *cd = FUNC1(dev);

	curr_bitstream = FUNC0(cd, IO_SLU_BITSTREAM) & 0x1;
	return FUNC2(buf, "%d\n", curr_bitstream);
}