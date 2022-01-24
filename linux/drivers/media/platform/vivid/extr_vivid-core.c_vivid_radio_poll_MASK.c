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
struct video_device {scalar_t__ vfl_dir; } ;
struct poll_table_struct {int dummy; } ;
struct file {int dummy; } ;
typedef  int /*<<< orphan*/  __poll_t ;

/* Variables and functions */
 scalar_t__ VFL_DIR_RX ; 
 struct video_device* FUNC0 (struct file*) ; 
 int /*<<< orphan*/  FUNC1 (struct file*,struct poll_table_struct*) ; 
 int /*<<< orphan*/  FUNC2 (struct file*,struct poll_table_struct*) ; 

__attribute__((used)) static __poll_t FUNC3(struct file *file, struct poll_table_struct *wait)
{
	struct video_device *vdev = FUNC0(file);

	if (vdev->vfl_dir == VFL_DIR_RX)
		return FUNC1(file, wait);
	return FUNC2(file, wait);
}