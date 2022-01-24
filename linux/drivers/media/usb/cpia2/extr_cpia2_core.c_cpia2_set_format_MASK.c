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
struct camera_data {int flush; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct camera_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct camera_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct camera_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct camera_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct camera_data*) ; 

void FUNC5(struct camera_data *cam)
{
	cam->flush = true;

	FUNC3(cam);

	/* reset camera to new size */
	FUNC2(cam);
	FUNC1(cam);
	cam->flush = false;

	FUNC0(cam);

	FUNC4(cam);
}