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
struct ath10k_usb_pipe {TYPE_1__* ar_usb; int /*<<< orphan*/  urb_list_head; int /*<<< orphan*/  urb_cnt; } ;
struct ath10k_urb_context {int /*<<< orphan*/  link; } ;
struct TYPE_2__ {int /*<<< orphan*/  cs_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC3(struct ath10k_usb_pipe *pipe,
					struct ath10k_urb_context *urb_context)
{
	unsigned long flags;

	FUNC1(&pipe->ar_usb->cs_lock, flags);

	pipe->urb_cnt++;
	FUNC0(&urb_context->link, &pipe->urb_list_head);

	FUNC2(&pipe->ar_usb->cs_lock, flags);
}