#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct scif_cb_arg {int /*<<< orphan*/  src_dma_addr; int /*<<< orphan*/  status; TYPE_2__* ep; } ;
struct TYPE_4__ {TYPE_1__* remote_dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  signal_pool; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct scif_cb_arg*) ; 

__attribute__((used)) static void FUNC2(void *arg)
{
	struct scif_cb_arg *cb_arg = arg;

	FUNC0(cb_arg->ep->remote_dev->signal_pool, cb_arg->status,
		      cb_arg->src_dma_addr);
	FUNC1(cb_arg);
}