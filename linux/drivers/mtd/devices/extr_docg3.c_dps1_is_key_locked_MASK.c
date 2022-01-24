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
struct docg3 {TYPE_1__* cascade; int /*<<< orphan*/  device_id; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  DOC_DPS1_STATUS ; 
 int DOC_DPS_KEY_OK ; 
 int FUNC0 (struct docg3*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct docg3*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 struct docg3* FUNC5 (struct device*,struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev,
				  struct device_attribute *attr, char *buf)
{
	struct docg3 *docg3 = FUNC5(dev, attr);
	int dps1;

	FUNC2(&docg3->cascade->lock);
	FUNC1(docg3, docg3->device_id);
	dps1 = FUNC0(docg3, DOC_DPS1_STATUS);
	FUNC1(docg3, 0);
	FUNC3(&docg3->cascade->lock);

	return FUNC4(buf, "%d\n", !(dps1 & DOC_DPS_KEY_OK));
}