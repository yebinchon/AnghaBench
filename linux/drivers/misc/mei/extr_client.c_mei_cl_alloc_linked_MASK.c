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
struct mei_device {int dummy; } ;
struct mei_cl {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct mei_cl* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct mei_cl*) ; 
 struct mei_cl* FUNC2 (struct mei_device*) ; 
 int FUNC3 (struct mei_cl*) ; 

struct mei_cl *FUNC4(struct mei_device *dev)
{
	struct mei_cl *cl;
	int ret;

	cl = FUNC2(dev);
	if (!cl) {
		ret = -ENOMEM;
		goto err;
	}

	ret = FUNC3(cl);
	if (ret)
		goto err;

	return cl;
err:
	FUNC1(cl);
	return FUNC0(ret);
}