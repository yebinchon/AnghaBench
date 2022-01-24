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
struct video_device {int /*<<< orphan*/  entity; } ;
struct file {int /*<<< orphan*/ * private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct file*) ; 
 struct video_device* FUNC2 (struct file*) ; 

__attribute__((used)) static int FUNC3(struct file *file)
{
	struct video_device *vdev = FUNC2(file);

	FUNC1(file);

	FUNC0(&vdev->entity, 0);

	file->private_data = NULL;

	return 0;
}