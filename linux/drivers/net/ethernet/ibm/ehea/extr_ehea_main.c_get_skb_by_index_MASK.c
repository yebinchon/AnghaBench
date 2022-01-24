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
struct sk_buff {void* data; } ;
struct ehea_cqe {int /*<<< orphan*/  wr_id; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int EHEA_CACHE_LINE ; 
 int /*<<< orphan*/  EHEA_WR_ID_INDEX ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 

__attribute__((used)) static inline struct sk_buff *FUNC3(struct sk_buff **skb_array,
					       int arr_len,
					       struct ehea_cqe *cqe)
{
	int skb_index = FUNC0(EHEA_WR_ID_INDEX, cqe->wr_id);
	struct sk_buff *skb;
	void *pref;
	int x;

	x = skb_index + 1;
	x &= (arr_len - 1);

	pref = skb_array[x];
	if (pref) {
		FUNC2(pref);
		FUNC2(pref + EHEA_CACHE_LINE);

		pref = (skb_array[x]->data);
		FUNC1(pref);
		FUNC1(pref + EHEA_CACHE_LINE);
		FUNC1(pref + EHEA_CACHE_LINE * 2);
		FUNC1(pref + EHEA_CACHE_LINE * 3);
	}

	skb = skb_array[skb_index];
	skb_array[skb_index] = NULL;
	return skb;
}