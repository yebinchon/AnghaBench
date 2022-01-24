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
typedef  int /*<<< orphan*/  u8 ;
struct dvb_ringbuffer {int /*<<< orphan*/  queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dvb_ringbuffer*,int) ; 
 int FUNC1 (struct dvb_ringbuffer*) ; 
 int /*<<< orphan*/  FUNC2 (struct dvb_ringbuffer*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct dvb_ringbuffer *cibuf, u8 *data, int len)
{
	if (FUNC1(cibuf) < len + 2)
		return;

	FUNC0(cibuf, len >> 8);
	FUNC0(cibuf, len & 0xff);
	FUNC2(cibuf, data, len);
	FUNC3(&cibuf->queue);
}