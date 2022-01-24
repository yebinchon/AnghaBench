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
struct mvpp2_port {int /*<<< orphan*/  id; struct mvpp2* priv; } ;
struct mvpp2 {TYPE_1__* prs_shadow; } ;
struct TYPE_2__ {int valid; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mvpp2*,int) ; 

void FUNC3(struct mvpp2_port *port)
{
	struct mvpp2 *priv = port->priv;
	int tid;

	for (tid = FUNC0(port->id);
	     tid <= FUNC1(port->id); tid++) {
		if (priv->prs_shadow[tid].valid) {
			FUNC2(priv, tid);
			priv->prs_shadow[tid].valid = false;
		}
	}
}