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
typedef  void* u16 ;
struct wl3501_card {void* tx_buffer_tail; int /*<<< orphan*/  tx_buffer_cnt; void* tx_buffer_head; } ;
typedef  int /*<<< orphan*/  ptr ;
typedef  int /*<<< orphan*/  next ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct wl3501_card*,void*,void**,int) ; 
 int /*<<< orphan*/  FUNC1 (struct wl3501_card*,void*,void**,int) ; 

__attribute__((used)) static void FUNC2(struct wl3501_card *this, u16 ptr)
{
	/* check if all space is not free */
	if (!this->tx_buffer_head)
		this->tx_buffer_head = ptr;
	else
		FUNC1(this, this->tx_buffer_tail,
				  &ptr, sizeof(ptr));
	while (ptr) {
		u16 next;

		this->tx_buffer_cnt++;
		FUNC0(this, ptr, &next, sizeof(next));
		this->tx_buffer_tail = ptr;
		ptr = next;
	}
}