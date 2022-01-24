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
struct hdlc_proto {struct hdlc_proto* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct hdlc_proto* first_proto ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 

void FUNC3(struct hdlc_proto *proto)
{
	struct hdlc_proto **p;

	FUNC1();
	p = &first_proto;
	while (*p != proto) {
		FUNC0(!*p);
		p = &((*p)->next);
	}
	*p = proto->next;
	FUNC2();
}