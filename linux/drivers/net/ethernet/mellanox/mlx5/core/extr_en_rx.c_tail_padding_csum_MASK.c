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
struct sk_buff {int len; int /*<<< orphan*/  csum; } ;
struct mlx5e_rq_stats {int /*<<< orphan*/  csum_complete_tail; } ;

/* Variables and functions */
 int MAX_PADDING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (void*,int,int /*<<< orphan*/ ) ; 
 void* FUNC2 (struct sk_buff*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int,int,struct mlx5e_rq_stats*) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static void
FUNC5(struct sk_buff *skb, int offset,
		  struct mlx5e_rq_stats *stats)
{
	u8 tail_padding[MAX_PADDING];
	int len = skb->len - offset;
	void *tail;

	if (FUNC4(len > MAX_PADDING)) {
		FUNC3(skb, offset, len, stats);
		return;
	}

	tail = FUNC2(skb, offset, len, tail_padding);
	if (FUNC4(!tail)) {
		FUNC3(skb, offset, len, stats);
		return;
	}

	stats->csum_complete_tail++;
	skb->csum = FUNC0(skb->csum, FUNC1(tail, len, 0), offset);
}