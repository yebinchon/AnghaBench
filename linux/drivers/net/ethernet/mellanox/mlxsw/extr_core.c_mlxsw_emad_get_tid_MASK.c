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
struct sk_buff {int dummy; } ;

/* Variables and functions */
 char* FUNC0 (struct sk_buff const*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static u64 FUNC2(const struct sk_buff *skb)
{
	char *op_tlv;

	op_tlv = FUNC0(skb);
	return FUNC1(op_tlv);
}