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
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct amradio_device {TYPE_1__ vdev; int /*<<< orphan*/  curfreq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (struct amradio_device*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct amradio_device*,int) ; 
 int FUNC3 (struct amradio_device*,int) ; 

__attribute__((used)) static int FUNC4(struct amradio_device *radio)
{
	int retval;

	retval = FUNC2(radio, true);
	if (retval)
		goto out_err;
	retval = FUNC3(radio, true);
	if (retval)
		goto out_err;
	retval = FUNC1(radio, radio->curfreq);
	if (retval)
		goto out_err;
	return 0;

out_err:
	FUNC0(&radio->vdev.dev, "initialization failed\n");
	return retval;
}