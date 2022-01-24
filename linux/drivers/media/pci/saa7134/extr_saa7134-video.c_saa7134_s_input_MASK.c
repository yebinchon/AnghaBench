#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct saa7134_dev {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_2__ {scalar_t__ type; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned int SAA7134_INPUT_MAX ; 
 scalar_t__ SAA7134_NO_INPUT ; 
 TYPE_1__ FUNC0 (struct saa7134_dev*,unsigned int) ; 
 struct saa7134_dev* FUNC1 (struct file*) ; 
 int /*<<< orphan*/  FUNC2 (struct saa7134_dev*,unsigned int) ; 

int FUNC3(struct file *file, void *priv, unsigned int i)
{
	struct saa7134_dev *dev = FUNC1(file);

	if (i >= SAA7134_INPUT_MAX)
		return -EINVAL;
	if (FUNC0(dev, i).type == SAA7134_NO_INPUT)
		return -EINVAL;
	FUNC2(dev, i);
	return 0;
}