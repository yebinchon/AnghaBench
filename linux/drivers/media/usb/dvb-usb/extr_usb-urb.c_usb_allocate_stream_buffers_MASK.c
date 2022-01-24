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
struct usb_data_stream {int buf_num; unsigned long buf_size; int /*<<< orphan*/  state; int /*<<< orphan*/ ** buf_list; scalar_t__* dma_addr; int /*<<< orphan*/  udev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  USB_STATE_URB_BUF ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_data_stream*) ; 

__attribute__((used)) static int FUNC4(struct usb_data_stream *stream, int num, unsigned long size)
{
	stream->buf_num = 0;
	stream->buf_size = size;

	FUNC0("all in all I will use %lu bytes for streaming\n",num*size);

	for (stream->buf_num = 0; stream->buf_num < num; stream->buf_num++) {
		FUNC0("allocating buffer %d\n",stream->buf_num);
		if (( stream->buf_list[stream->buf_num] =
					FUNC2(stream->udev, size, GFP_KERNEL,
					&stream->dma_addr[stream->buf_num]) ) == NULL) {
			FUNC0("not enough memory for urb-buffer allocation.\n");
			FUNC3(stream);
			return -ENOMEM;
		}
		FUNC0("buffer %d: %p (dma: %Lu)\n",
			stream->buf_num,
stream->buf_list[stream->buf_num], (long long)stream->dma_addr[stream->buf_num]);
		FUNC1(stream->buf_list[stream->buf_num],0,size);
		stream->state |= USB_STATE_URB_BUF;
	}
	FUNC0("allocation successful\n");

	return 0;
}