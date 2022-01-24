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
struct hdlcdrv_state {scalar_t__ magic; TYPE_1__* ops; scalar_t__ opened; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* close ) (struct net_device*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ HDLCDRV_MAGIC ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 struct hdlcdrv_state* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 

void FUNC5(struct net_device *dev) 
{
	struct hdlcdrv_state *s = FUNC2(dev);

	FUNC0(s->magic != HDLCDRV_MAGIC);

	if (s->opened && s->ops->close)
		s->ops->close(dev);
	FUNC4(dev);
	
	FUNC1(dev);
}