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
struct sk_buff {char* data; } ;

/* Variables and functions */
 int FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int FUNC1 (struct sk_buff*) ; 
 unsigned int FUNC2 (char*) ; 
 unsigned int FUNC3 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC4(struct sk_buff *skb)
{
	char *data = skb->data;
	unsigned int offset = FUNC2(data);
	unsigned int len = FUNC3(skb);
	int slots;
	int frag_slots;

	slots = FUNC0(offset + len, PAGE_SIZE);
	frag_slots = FUNC1(skb);
	return slots + frag_slots;
}