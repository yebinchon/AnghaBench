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
typedef  int u16 ;
struct dvb_ringbuffer {int /*<<< orphan*/  queue; scalar_t__ pwrite; scalar_t__ pread; } ;

/* Variables and functions */
 int FUNC0 (struct dvb_ringbuffer*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct dvb_ringbuffer*,int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,unsigned long,unsigned long) ; 
 int FUNC3 (struct dvb_ringbuffer*) ; 
 int /*<<< orphan*/  FUNC4 (struct dvb_ringbuffer*,void*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(void *dest, struct dvb_ringbuffer *buf, int dlen)
{
	int len;
	u32 sync;
	u16 blen;

	if (!dlen) {
		FUNC6(&buf->queue);
		return -1;
	}
	while (1) {
		len = FUNC3(buf);
		if (len < 6) {
			FUNC6(&buf->queue);
			return -1;
		}
		sync =  FUNC0(buf, 0) << 24;
		sync |= FUNC0(buf, 1) << 16;
		sync |= FUNC0(buf, 2) << 8;
		sync |= FUNC0(buf, 3);

		if (((sync &~ 0x0f) == 0x000001e0) ||
		    ((sync &~ 0x1f) == 0x000001c0) ||
		    (sync == 0x000001bd))
			break;
		FUNC5("resync\n");
		FUNC1(buf, 1);
	}
	blen =  FUNC0(buf, 4) << 8;
	blen |= FUNC0(buf, 5);
	blen += 6;
	if (len < blen || blen > dlen) {
		//printk("buffer empty - avail %d blen %u dlen %d\n", len, blen, dlen);
		FUNC6(&buf->queue);
		return -1;
	}

	FUNC4(buf, dest, (size_t) blen);

	FUNC2(2, "pread=0x%08lx, pwrite=0x%08lx\n",
	       (unsigned long) buf->pread, (unsigned long) buf->pwrite);
	FUNC6(&buf->queue);
	return blen;
}