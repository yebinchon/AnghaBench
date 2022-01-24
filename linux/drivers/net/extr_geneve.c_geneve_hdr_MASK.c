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
struct sk_buff {int dummy; } ;
struct genevehdr {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct sk_buff const*) ; 

__attribute__((used)) static inline struct genevehdr *FUNC1(const struct sk_buff *skb)
{
	return (struct genevehdr *)(FUNC0(skb) + 1);
}