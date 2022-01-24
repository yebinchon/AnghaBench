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
struct vivid_dev {int dummy; } ;
struct fb_info {int /*<<< orphan*/  fix; int /*<<< orphan*/  var; scalar_t__ par; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vivid_dev*,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct vivid_dev*,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct vivid_dev*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct fb_info *info)
{
	int rc = 0;
	struct vivid_dev *dev = (struct vivid_dev *) info->par;

	FUNC0(dev, 1, "vivid_fb_set_par\n");

	rc = FUNC2(dev, &info->var);
	FUNC1(dev, &info->fix);
	return rc;
}