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
struct TYPE_2__ {char* name; } ;
struct vpfe_device {TYPE_1__ v4l2_dev; } ;
struct v4l2_capability {int /*<<< orphan*/  bus_info; int /*<<< orphan*/  card; int /*<<< orphan*/  driver; } ;
struct file {int dummy; } ;

/* Variables and functions */
 char* VPFE_MODULE_NAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 struct vpfe_device* FUNC2 (struct file*) ; 
 int /*<<< orphan*/  FUNC3 (int,struct vpfe_device*,char*) ; 

__attribute__((used)) static int FUNC4(struct file *file, void  *priv,
			 struct v4l2_capability *cap)
{
	struct vpfe_device *vpfe = FUNC2(file);

	FUNC3(2, vpfe, "vpfe_querycap\n");

	FUNC1(cap->driver, VPFE_MODULE_NAME, sizeof(cap->driver));
	FUNC1(cap->card, "TI AM437x VPFE", sizeof(cap->card));
	FUNC0(cap->bus_info, sizeof(cap->bus_info),
			"platform:%s", vpfe->v4l2_dev.name);
	return 0;
}