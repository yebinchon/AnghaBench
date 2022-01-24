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
struct v4l2_device {int dummy; } ;
struct shark_device {struct shark_device* transfer_buffer; int /*<<< orphan*/  v4l2_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct shark_device*) ; 
 struct shark_device* FUNC1 (struct v4l2_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct v4l2_device *v4l2_dev)
{
	struct shark_device *shark = FUNC1(v4l2_dev);

	FUNC2(&shark->v4l2_dev);
	FUNC0(shark->transfer_buffer);
	FUNC0(shark);
}