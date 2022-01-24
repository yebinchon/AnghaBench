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
struct v4l2_capability {int /*<<< orphan*/  bus_info; int /*<<< orphan*/  driver; int /*<<< orphan*/  card; } ;
struct file {int dummy; } ;
struct ceu_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 char* DRIVER_NAME ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 struct ceu_device* FUNC3 (struct file*) ; 

__attribute__((used)) static int FUNC4(struct file *file, void *priv,
			struct v4l2_capability *cap)
{
	struct ceu_device *ceudev = FUNC3(file);

	FUNC2(cap->card, "Renesas CEU", sizeof(cap->card));
	FUNC2(cap->driver, DRIVER_NAME, sizeof(cap->driver));
	FUNC1(cap->bus_info, sizeof(cap->bus_info),
		 "platform:renesas-ceu-%s", FUNC0(ceudev->dev));

	return 0;
}