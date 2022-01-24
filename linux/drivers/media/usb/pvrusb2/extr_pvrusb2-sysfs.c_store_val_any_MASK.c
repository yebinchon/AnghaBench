#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct pvr2_sysfs_ctl_item {TYPE_2__* chptr; int /*<<< orphan*/  cptr; } ;
struct TYPE_3__ {int /*<<< orphan*/  hdw; } ;
struct TYPE_4__ {TYPE_1__ channel; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,char const*,unsigned int,int*,int*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,char const*,unsigned int,int*,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct pvr2_sysfs_ctl_item *cip, int customfl,
			 const char *buf,unsigned int count)
{
	int ret;
	int mask,val;
	if (customfl) {
		ret = FUNC0(cip->cptr, buf, count,
						    &mask, &val);
	} else {
		ret = FUNC2(cip->cptr, buf, count,
					     &mask, &val);
	}
	if (ret < 0) return ret;
	ret = FUNC1(cip->cptr, mask, val);
	FUNC3(cip->chptr->channel.hdw);
	return ret;
}