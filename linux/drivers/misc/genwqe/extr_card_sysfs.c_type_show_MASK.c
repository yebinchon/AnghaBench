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
typedef  size_t u8 ;
struct genwqe_dev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 size_t FUNC0 (char**) ; 
 struct genwqe_dev* FUNC1 (struct device*) ; 
 size_t FUNC2 (struct genwqe_dev*) ; 
 char** genwqe_types ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char*) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev, struct device_attribute *attr,
			 char *buf)
{
	u8 card_type;
	struct genwqe_dev *cd = FUNC1(dev);

	card_type = FUNC2(cd);
	return FUNC3(buf, "%s\n", (card_type >= FUNC0(genwqe_types)) ?
		       "invalid" : genwqe_types[card_type]);
}