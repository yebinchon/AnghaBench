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
struct file {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  mchip_dev; } ;

/* Variables and functions */
 TYPE_1__ meye ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC3(struct file *file, void *fh,
				struct v4l2_capability *cap)
{
	FUNC2(cap->driver, "meye", sizeof(cap->driver));
	FUNC2(cap->card, "meye", sizeof(cap->card));
	FUNC1(cap->bus_info, "PCI:%s", FUNC0(meye.mchip_dev));
	return 0;
}