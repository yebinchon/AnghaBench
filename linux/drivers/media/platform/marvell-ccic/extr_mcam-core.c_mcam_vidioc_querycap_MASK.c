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
struct mcam_camera {char* bus_info; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 struct mcam_camera* FUNC1 (struct file*) ; 

__attribute__((used)) static int FUNC2(struct file *file, void *priv,
		struct v4l2_capability *cap)
{
	struct mcam_camera *cam = FUNC1(file);

	FUNC0(cap->driver, "marvell_ccic", sizeof(cap->driver));
	FUNC0(cap->card, "marvell_ccic", sizeof(cap->card));
	FUNC0(cap->bus_info, cam->bus_info, sizeof(cap->bus_info));
	return 0;
}