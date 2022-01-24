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
typedef  int /*<<< orphan*/  u16 ;
struct sk_buff_head {int dummy; } ;
struct mt76_rx_tid {int head; int size; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mt76_rx_tid*,struct sk_buff_head*,int) ; 

__attribute__((used)) static void
FUNC2(struct mt76_rx_tid *tid,
			    struct sk_buff_head *frames,
			    u16 head)
{
	int idx;

	while (FUNC0(tid->head, head)) {
		idx = tid->head % tid->size;
		FUNC1(tid, frames, idx);
	}
}