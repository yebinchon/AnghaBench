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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void const*) ; 

__attribute__((used)) static inline void FUNC1(const struct sk_buff *skb)
{
	const void *d = skb;

	FUNC0(d);
	FUNC0(d+64);
	FUNC0(d+128);
	FUNC0(d+192);
}