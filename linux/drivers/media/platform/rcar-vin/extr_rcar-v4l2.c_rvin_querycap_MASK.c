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
struct v4l2_capability {int /*<<< orphan*/  bus_info; int /*<<< orphan*/  card; int /*<<< orphan*/  driver; } ;
struct rvin_dev {int /*<<< orphan*/  dev; } ;
struct file {int dummy; } ;

/* Variables and functions */
 char* KBUILD_MODNAME ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 struct rvin_dev* FUNC3 (struct file*) ; 

__attribute__((used)) static int FUNC4(struct file *file, void *priv,
			 struct v4l2_capability *cap)
{
	struct rvin_dev *vin = FUNC3(file);

	FUNC2(cap->driver, KBUILD_MODNAME, sizeof(cap->driver));
	FUNC2(cap->card, "R_Car_VIN", sizeof(cap->card));
	FUNC1(cap->bus_info, sizeof(cap->bus_info), "platform:%s",
		 FUNC0(vin->dev));
	return 0;
}