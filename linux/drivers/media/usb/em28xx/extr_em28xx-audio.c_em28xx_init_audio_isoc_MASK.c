#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int num_urb; int /*<<< orphan*/  stream_started; TYPE_3__** urb; int /*<<< orphan*/ * transfer_buffer; } ;
struct em28xx {TYPE_2__ adev; TYPE_1__* intf; } ;
struct TYPE_6__ {int /*<<< orphan*/  transfer_buffer_length; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct em28xx*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_3__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct em28xx *dev)
{
	int       i, err;

	FUNC2("Starting isoc transfers\n");

	/* Start streaming */
	for (i = 0; i < dev->adev.num_urb; i++) {
		FUNC4(dev->adev.transfer_buffer[i], 0x80,
		       dev->adev.urb[i]->transfer_buffer_length);

		err = FUNC5(dev->adev.urb[i], GFP_ATOMIC);
		if (err) {
			FUNC1(&dev->intf->dev,
				"submit of audio urb failed (error=%i)\n",
				err);
			FUNC3(dev);
			FUNC0(&dev->adev.stream_started, 0);
			return err;
		}
	}

	return 0;
}