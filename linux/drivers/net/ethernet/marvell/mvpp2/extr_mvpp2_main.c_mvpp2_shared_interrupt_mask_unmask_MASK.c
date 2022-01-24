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
typedef  scalar_t__ u32 ;
struct mvpp2_queue_vector {scalar_t__ type; int /*<<< orphan*/  sw_thread_id; } ;
struct mvpp2_port {int nqvecs; int /*<<< orphan*/  id; TYPE_1__* priv; struct mvpp2_queue_vector* qvecs; } ;
struct TYPE_2__ {scalar_t__ hw_version; } ;

/* Variables and functions */
 scalar_t__ MVPP22 ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ MVPP2_QUEUE_VECTOR_SHARED ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void
FUNC3(struct mvpp2_port *port, bool mask)
{
	u32 val;
	int i;

	if (port->priv->hw_version != MVPP22)
		return;

	if (mask)
		val = 0;
	else
		val = FUNC0(MVPP22);

	for (i = 0; i < port->nqvecs; i++) {
		struct mvpp2_queue_vector *v = port->qvecs + i;

		if (v->type != MVPP2_QUEUE_VECTOR_SHARED)
			continue;

		FUNC2(port->priv, v->sw_thread_id,
				   FUNC1(port->id), val);
	}
}