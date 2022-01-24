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
struct lis3lv02d {int /*<<< orphan*/  mutex; } ;
struct input_polled_dev {int /*<<< orphan*/  input; struct lis3lv02d* private; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_X ; 
 int /*<<< orphan*/  ABS_Y ; 
 int /*<<< orphan*/  ABS_Z ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct lis3lv02d*,int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct input_polled_dev *pidev)
{
	struct lis3lv02d *lis3 = pidev->private;
	int x, y, z;

	FUNC3(&lis3->mutex);
	FUNC2(lis3, &x, &y, &z);
	FUNC0(pidev->input, ABS_X, x);
	FUNC0(pidev->input, ABS_Y, y);
	FUNC0(pidev->input, ABS_Z, z);
	FUNC1(pidev->input);
	FUNC4(&lis3->mutex);
}