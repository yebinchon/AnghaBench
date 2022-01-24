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
struct mvpp2_port {int nqvecs; int /*<<< orphan*/  id; int /*<<< orphan*/  priv; TYPE_1__* qvecs; } ;
struct TYPE_2__ {int sw_thread_mask; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC3(struct mvpp2_port *port)
{
	int i, sw_thread_mask = 0;

	for (i = 0; i < port->nqvecs; i++)
		sw_thread_mask |= port->qvecs[i].sw_thread_mask;

	FUNC2(port->priv, FUNC1(port->id),
		    FUNC0(sw_thread_mask));
}