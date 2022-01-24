#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct si4713_usb_device {int dummy; } ;
struct TYPE_3__ {char command_id; int /*<<< orphan*/  payload; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int BUFFER_LENGTH ; 
 int EINVAL ; 
 TYPE_1__* command_table ; 
 int FUNC1 (struct si4713_usb_device*,int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC2(struct si4713_usb_device *radio, char *data, int len)
{
	int retval = -EINVAL;
	int i;

	if (len > BUFFER_LENGTH - 5)
		return -EINVAL;

	for (i = 0; i < FUNC0(command_table); i++) {
		if (data[0] == command_table[i].command_id)
			retval = FUNC1(radio, command_table[i].payload,
						data, len);
	}

	return retval < 0 ? retval : 0;
}