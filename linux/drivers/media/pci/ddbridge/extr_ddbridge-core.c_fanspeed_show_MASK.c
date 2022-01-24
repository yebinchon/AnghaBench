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
typedef  int u32 ;
struct TYPE_2__ {int* name; } ;
struct device_attribute {TYPE_1__ attr; } ;
struct device {int dummy; } ;
struct ddb_link {int dummy; } ;
struct ddb {struct ddb_link* link; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  TEMPMON_FANCONTROL ; 
 int FUNC0 (struct ddb_link*,int /*<<< orphan*/ ) ; 
 struct ddb* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *device,
			     struct device_attribute *attr, char *buf)
{
	struct ddb *dev = FUNC1(device);
	int num = attr->attr.name[8] - 0x30;
	struct ddb_link *link = &dev->link[num];
	u32 spd;

	spd = FUNC0(link, TEMPMON_FANCONTROL) & 0xff;
	return FUNC2(buf, "%u\n", spd * 100);
}