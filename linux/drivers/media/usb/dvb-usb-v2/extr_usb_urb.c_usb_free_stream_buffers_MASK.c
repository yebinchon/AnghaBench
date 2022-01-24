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
struct usb_data_stream {int state; int buf_num; int /*<<< orphan*/ * buf_list; } ;

/* Variables and functions */
 int USB_STATE_URB_BUF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct usb_data_stream *stream)
{
	if (stream->state & USB_STATE_URB_BUF) {
		while (stream->buf_num) {
			stream->buf_num--;
			FUNC0(stream->buf_list[stream->buf_num]);
		}
	}

	stream->state &= ~USB_STATE_URB_BUF;

	return 0;
}