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
struct usb_data_stream {int urbs_initialized; int /*<<< orphan*/  urbs_submitted; int /*<<< orphan*/ * urb_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_data_stream*) ; 

int FUNC4(struct usb_data_stream *stream)
{
	int i,ret;
	for (i = 0; i < stream->urbs_initialized; i++) {
		FUNC0("submitting URB no. %d\n",i);
		if ((ret = FUNC2(stream->urb_list[i],GFP_ATOMIC))) {
			FUNC1("could not submit URB no. %d - get them all back",i);
			FUNC3(stream);
			return ret;
		}
		stream->urbs_submitted++;
	}
	return 0;
}