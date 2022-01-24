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
struct v4l2_capability {int /*<<< orphan*/  bus_info; int /*<<< orphan*/  card; int /*<<< orphan*/  driver; } ;
struct omap_vout_device {int vid; TYPE_1__* vfd; } ;
struct file {int dummy; } ;
struct TYPE_2__ {char* name; } ;

/* Variables and functions */
 char* VOUT_NAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 struct omap_vout_device* FUNC2 (struct file*) ; 

__attribute__((used)) static int FUNC3(struct file *file, void *fh,
		struct v4l2_capability *cap)
{
	struct omap_vout_device *vout = FUNC2(file);

	FUNC1(cap->driver, VOUT_NAME, sizeof(cap->driver));
	FUNC1(cap->card, vout->vfd->name, sizeof(cap->card));
	FUNC0(cap->bus_info, sizeof(cap->bus_info),
		 "platform:%s.%d", VOUT_NAME, vout->vid);
	return 0;
}