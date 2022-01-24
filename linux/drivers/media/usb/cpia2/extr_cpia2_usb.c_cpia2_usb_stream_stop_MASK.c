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
struct camera_data {scalar_t__ streaming; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct camera_data*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct camera_data*) ; 

int FUNC2(struct camera_data *cam)
{
	int ret;

	ret = FUNC1(cam);
	cam->streaming = 0;
	FUNC0(cam, 0);
	return ret;
}