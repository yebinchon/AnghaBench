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
struct vnet_port {int /*<<< orphan*/  clean_timer; } ;
struct timer_list {int dummy; } ;
struct sk_buff {int dummy; } ;

/* Variables and functions */
 scalar_t__ VNET_CLEAN_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (struct vnet_port*) ; 
 int /*<<< orphan*/  clean_timer ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct vnet_port* FUNC2 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct vnet_port* port ; 
 struct sk_buff* FUNC6 (struct vnet_port*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 

void FUNC8(struct timer_list *t)
{
	struct vnet_port *port = FUNC2(port, t, clean_timer);
	struct sk_buff *freeskbs;
	unsigned pending;

	FUNC4(FUNC0(port));
	freeskbs = FUNC6(port, &pending);
	FUNC5(FUNC0(port));

	FUNC7(freeskbs);

	if (pending)
		(void)FUNC3(&port->clean_timer,
				jiffies + VNET_CLEAN_TIMEOUT);
	 else
		FUNC1(&port->clean_timer);
}