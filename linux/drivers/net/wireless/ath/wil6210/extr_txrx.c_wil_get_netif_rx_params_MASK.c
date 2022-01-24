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
struct vring_rx_desc {int dummy; } ;
struct sk_buff {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct vring_rx_desc*) ; 
 int FUNC1 (struct sk_buff*) ; 
 struct vring_rx_desc* FUNC2 (struct sk_buff*) ; 

__attribute__((used)) static void FUNC3(struct sk_buff *skb, int *cid,
				    int *security)
{
	struct vring_rx_desc *d = FUNC2(skb);

	*cid = FUNC1(skb);
	*security = FUNC0(d);
}