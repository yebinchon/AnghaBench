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
struct lan743x_adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct lan743x_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct lan743x_adapter*,struct sk_buff*,int) ; 

void FUNC2(struct lan743x_adapter *adapter,
				  struct sk_buff *skb, bool ignore_sync)
{
	FUNC1(adapter, skb, ignore_sync);

	FUNC0(adapter);
}