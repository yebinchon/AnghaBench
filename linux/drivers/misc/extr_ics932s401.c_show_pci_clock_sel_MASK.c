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
struct ics932s401_data {int* regs; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int ICS932S401_MN_ENABLED ; 
 size_t ICS932S401_REG_CTRL ; 
 int FUNC0 (struct ics932s401_data*) ; 
 struct ics932s401_data* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev,
				  struct device_attribute *devattr,
				  char *buf)
{
	struct ics932s401_data *data = FUNC1(dev);
	int freq;

	if (data->regs[ICS932S401_REG_CTRL] & ICS932S401_MN_ENABLED)
		freq = FUNC0(data);
	else
		freq = 33333;

	return FUNC2(buf, "%d\n", freq);
}