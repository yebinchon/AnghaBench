#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * ctrlq; } ;
struct adapter {TYPE_1__ sge; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 

int FUNC3(struct adapter *adap, struct sk_buff *skb)
{
	int ret;

	FUNC1();
	ret = FUNC0(&adap->sge.ctrlq[0], skb);
	FUNC2();
	return ret;
}