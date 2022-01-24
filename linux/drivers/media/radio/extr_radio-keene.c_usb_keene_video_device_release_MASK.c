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
struct keene_device {struct keene_device* buffer; int /*<<< orphan*/  hdl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct keene_device*) ; 
 struct keene_device* FUNC1 (struct v4l2_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct v4l2_device *v4l2_dev)
{
	struct keene_device *radio = FUNC1(v4l2_dev);

	/* free rest memory */
	FUNC2(&radio->hdl);
	FUNC0(radio->buffer);
	FUNC0(radio);
}