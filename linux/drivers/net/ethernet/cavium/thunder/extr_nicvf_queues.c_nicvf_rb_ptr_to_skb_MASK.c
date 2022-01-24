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
typedef  int /*<<< orphan*/  u64 ;
struct sk_buff {int /*<<< orphan*/  data; } ;
struct nicvf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RCV_FRAG_LEN ; 
 struct sk_buff* FUNC0 (void*,int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 

__attribute__((used)) static struct sk_buff *FUNC5(struct nicvf *nic,
					   u64 rb_ptr, int len)
{
	void *data;
	struct sk_buff *skb;

	data = FUNC1(rb_ptr);

	/* Now build an skb to give to stack */
	skb = FUNC0(data, RCV_FRAG_LEN);
	if (!skb) {
		FUNC3(FUNC4(data));
		return NULL;
	}

	FUNC2(skb->data);
	return skb;
}