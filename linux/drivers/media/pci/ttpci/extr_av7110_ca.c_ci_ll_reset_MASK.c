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
typedef  int u8 ;
struct file {int dummy; } ;
struct dvb_ringbuffer {int dummy; } ;
struct ca_slot_info {scalar_t__ flags; } ;

/* Variables and functions */
 int EBUSY ; 
 int FUNC0 (struct dvb_ringbuffer*) ; 
 int /*<<< orphan*/  FUNC1 (struct dvb_ringbuffer*,int*,int) ; 

__attribute__((used)) static int FUNC2(struct dvb_ringbuffer *cibuf, struct file *file,
		       int slots, struct ca_slot_info *slot)
{
	int i;
	int len = 0;
	u8 msg[8] = { 0x00, 0x06, 0x00, 0x00, 0xff, 0x02, 0x00, 0x00 };

	for (i = 0; i < 2; i++) {
		if (slots & (1 << i))
			len += 8;
	}

	if (FUNC0(cibuf) < len)
		return -EBUSY;

	for (i = 0; i < 2; i++) {
		if (slots & (1 << i)) {
			msg[2] = i;
			FUNC1(cibuf, msg, 8);
			slot[i].flags = 0;
		}
	}

	return 0;
}