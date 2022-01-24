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
typedef  int /*<<< orphan*/  uuid_le ;
typedef  int /*<<< orphan*/  u8 ;
struct mei_cl_device {int /*<<< orphan*/  name; int /*<<< orphan*/  me_cl; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 struct mei_cl_device* FUNC3 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev, struct device_attribute *a,
			     char *buf)
{
	struct mei_cl_device *cldev = FUNC3(dev);
	const uuid_le *uuid = FUNC0(cldev->me_cl);
	u8 version = FUNC1(cldev->me_cl);

	return FUNC2(buf, PAGE_SIZE, "mei:%s:%pUl:%02X:",
			 cldev->name, uuid, version);
}