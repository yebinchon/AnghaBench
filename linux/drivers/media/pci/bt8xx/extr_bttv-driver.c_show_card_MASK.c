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
struct video_device {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int type; } ;
struct bttv {TYPE_1__ c; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int UNSET ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 struct video_device* FUNC1 (struct device*) ; 
 struct bttv* FUNC2 (struct video_device*) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *cd,
			 struct device_attribute *attr, char *buf)
{
	struct video_device *vfd = FUNC1(cd);
	struct bttv *btv = FUNC2(vfd);
	return FUNC0(buf, "%d\n", btv ? btv->c.type : UNSET);
}