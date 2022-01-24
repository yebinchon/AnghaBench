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
typedef  scalar_t__ u64 ;
struct sk_buff {int len; int /*<<< orphan*/  data_len; } ;
struct sge_txq {void* desc; scalar_t__ stat; } ;

/* Variables and functions */
 scalar_t__* FUNC0 (void*,int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff const*,int,void*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff const*,void*,int) ; 

__attribute__((used)) static void FUNC4(const struct sk_buff *skb, const struct sge_txq *tq,
			  void *pos)
{
	u64 *p;
	int left = (void *)tq->stat - pos;

	if (FUNC1(skb->len <= left)) {
		if (FUNC1(!skb->data_len))
			FUNC3(skb, pos, skb->len);
		else
			FUNC2(skb, 0, pos, skb->len);
		pos += skb->len;
	} else {
		FUNC2(skb, 0, pos, left);
		FUNC2(skb, left, tq->desc, skb->len - left);
		pos = (void *)tq->desc + (skb->len - left);
	}

	/* 0-pad to multiple of 16 */
	p = FUNC0(pos, 8);
	if ((uintptr_t)p & 8)
		*p = 0;
}