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
 int FUNC0 (struct dvb_ringbuffer*) ; 
 int /*<<< orphan*/  FUNC1 (struct dvb_ringbuffer*,int /*<<< orphan*/  const*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline long FUNC3(struct dvb_ringbuffer *rbuf,
					 const u8 *buf, unsigned long count)
{
	unsigned long todo = count;
	int free;

	while (todo > 0) {
		if (FUNC0(rbuf) < 2048) {
			if (FUNC2(rbuf->queue,
						     (FUNC0(rbuf) >= 2048)))
				return count - todo;
		}
		free = FUNC0(rbuf);
		if (free > todo)
			free = todo;
		FUNC1(rbuf, buf, free);
		todo -= free;
		buf += free;
	}

	return count - todo;
}