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
struct scif_window {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  rma_lock; int /*<<< orphan*/  reg_list; } ;
struct scif_endpt {TYPE_1__ rma_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct scif_window*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void
FUNC3(struct scif_window *window, struct scif_endpt *ep)
{
	FUNC0(&ep->rma_info.rma_lock);
	FUNC2(window, &ep->rma_info.reg_list);
	FUNC1(&ep->rma_info.rma_lock);
}