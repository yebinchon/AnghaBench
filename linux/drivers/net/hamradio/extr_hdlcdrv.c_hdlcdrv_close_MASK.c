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
struct net_device {int dummy; } ;
struct hdlcdrv_state {scalar_t__ opened; int /*<<< orphan*/ * skb; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* close ) (struct net_device*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct hdlcdrv_state* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int FUNC3 (struct net_device*) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev)
{
	struct hdlcdrv_state *s = FUNC1(dev);
	int i = 0;

	FUNC2(dev);

	if (s->ops && s->ops->close)
		i = s->ops->close(dev);
	FUNC0(s->skb);
	s->skb = NULL;
	s->opened = 0;
	return i;
}