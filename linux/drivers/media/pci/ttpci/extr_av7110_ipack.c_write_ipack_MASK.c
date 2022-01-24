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
struct ipack {int count; int buf; int size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int const*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ipack*) ; 

__attribute__((used)) static void FUNC2(struct ipack *p, const u8 *data, int count)
{
	u8 headr[3] = { 0x00, 0x00, 0x01 };

	if (p->count < 6) {
		FUNC0(p->buf, headr, 3);
		p->count = 6;
	}

	if (p->count + count < p->size){
		FUNC0(p->buf+p->count, data, count);
		p->count += count;
	} else {
		int rest = p->size - p->count;
		FUNC0(p->buf+p->count, data, rest);
		p->count += rest;
		FUNC1(p);
		if (count - rest > 0)
			FUNC2(p, data + rest, count - rest);
	}
}