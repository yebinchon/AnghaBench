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
struct dentry {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  KERN_INFO ; 
 struct dentry* FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  usb_debug_root ; 
 struct dentry* uvc_debugfs_root_dir ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

void FUNC3(void)
{
	struct dentry *dir;

	dir = FUNC1("uvcvideo", usb_debug_root);
	if (FUNC0(dir)) {
		FUNC2(KERN_INFO, "Unable to create debugfs directory\n");
		return;
	}

	uvc_debugfs_root_dir = dir;
}