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
struct dvb_usb_device {int dummy; } ;
struct cxusb_medion_auxbuf {unsigned int len; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUXB ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct dvb_usb_device*,struct cxusb_medion_auxbuf*,unsigned int) ; 
 unsigned int FUNC2 (struct cxusb_medion_auxbuf*) ; 
 int /*<<< orphan*/  FUNC3 (struct dvb_usb_device*,int /*<<< orphan*/ ,char*,unsigned int) ; 

__attribute__((used)) static bool FUNC4(struct dvb_usb_device *dvbdev,
				    struct cxusb_medion_auxbuf *auxbuf,
				    unsigned int howmuch)
{
	unsigned int freespace;

	if (FUNC0(howmuch >= auxbuf->len))
		howmuch = auxbuf->len - 1;

	freespace = auxbuf->len - FUNC2(auxbuf);

	FUNC3(dvbdev, AUXB, "freespace is %u\n", freespace);

	if (freespace >= howmuch)
		return true;

	howmuch -= freespace;

	FUNC3(dvbdev, AUXB, "will overwrite %u bytes of buffer\n",
		      howmuch);

	FUNC1(dvbdev, auxbuf, howmuch);

	return false;
}