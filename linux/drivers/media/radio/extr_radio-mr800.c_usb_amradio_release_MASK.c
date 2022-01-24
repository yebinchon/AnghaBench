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
struct amradio_device {struct amradio_device* buffer; int /*<<< orphan*/  v4l2_dev; int /*<<< orphan*/  hdl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct amradio_device*) ; 
 struct amradio_device* FUNC1 (struct v4l2_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct v4l2_device *v4l2_dev)
{
	struct amradio_device *radio = FUNC1(v4l2_dev);

	/* free rest memory */
	FUNC2(&radio->hdl);
	FUNC3(&radio->v4l2_dev);
	FUNC0(radio->buffer);
	FUNC0(radio);
}