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
struct usb_usbvision {int scratch_read_ptr; scalar_t__ scratch; } ;

/* Variables and functions */
 int /*<<< orphan*/  DBG_SCRATCH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,scalar_t__,int) ; 
 int scratch_buf_size ; 

__attribute__((used)) static int FUNC2(struct usb_usbvision *usbvision, unsigned char *data,
		       int len)
{
	int len_part;

	if (usbvision->scratch_read_ptr + len < scratch_buf_size) {
		FUNC1(data, usbvision->scratch + usbvision->scratch_read_ptr, len);
		usbvision->scratch_read_ptr += len;
	} else {
		len_part = scratch_buf_size - usbvision->scratch_read_ptr;
		FUNC1(data, usbvision->scratch + usbvision->scratch_read_ptr, len_part);
		if (len == len_part) {
			usbvision->scratch_read_ptr = 0;				/* just set the read_ptr to zero */
		} else {
			FUNC1(data + len_part, usbvision->scratch, len - len_part);
			usbvision->scratch_read_ptr = len - len_part;
		}
	}

	FUNC0(DBG_SCRATCH, "len=%d, new read_ptr=%d\n", len, usbvision->scratch_read_ptr);

	return len;
}