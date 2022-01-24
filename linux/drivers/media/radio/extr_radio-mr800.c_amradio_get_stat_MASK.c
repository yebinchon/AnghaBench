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
typedef  int u32 ;
struct amradio_device {int* buffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  AMRADIO_GET_SIGNAL ; 
 int FUNC0 (struct amradio_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC1(struct amradio_device *radio, bool *is_stereo, u32 *signal)
{
	int ret = FUNC0(radio,
			AMRADIO_GET_SIGNAL, 0, NULL, 0, true);

	if (ret)
		return ret;
	*is_stereo = radio->buffer[2] >> 7;
	*signal = (radio->buffer[3] & 0xf0) << 8;
	return 0;
}