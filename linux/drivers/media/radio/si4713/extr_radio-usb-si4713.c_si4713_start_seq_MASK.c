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
typedef  int /*<<< orphan*/  u8 ;
struct si4713_usb_device {int* buffer; } ;
struct TYPE_3__ {int len; int /*<<< orphan*/ * payload; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int BUFFER_LENGTH ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct si4713_usb_device*) ; 
 TYPE_1__* start_seq ; 

__attribute__((used)) static int FUNC4(struct si4713_usb_device *radio)
{
	int retval = 0;
	int i;

	radio->buffer[0] = 0x3f;

	for (i = 0; i < FUNC0(start_seq); i++) {
		int len = start_seq[i].len;
		const u8 *payload = start_seq[i].payload;

		FUNC1(radio->buffer + 1, payload, len);
		FUNC2(radio->buffer + len + 1, 0, BUFFER_LENGTH - 1 - len);
		retval = FUNC3(radio);
	}

	return retval;
}