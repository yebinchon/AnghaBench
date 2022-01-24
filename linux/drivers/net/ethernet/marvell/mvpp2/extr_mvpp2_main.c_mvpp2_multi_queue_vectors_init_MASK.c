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
struct mvpp2_queue_vector {int sw_thread_id; int first_rxq; int nrxqs; int /*<<< orphan*/  irq; int /*<<< orphan*/  napi; int /*<<< orphan*/  type; int /*<<< orphan*/  sw_thread_mask; struct mvpp2_port* port; } ;
struct mvpp2_port {int nqvecs; int flags; int nrxqs; struct mvpp2_queue_vector* qvecs; int /*<<< orphan*/  dev; int /*<<< orphan*/  fwnode; struct mvpp2* priv; } ;
struct mvpp2 {int nthreads; } ;
struct device_node {int dummy; } ;
typedef  int /*<<< orphan*/  irqname ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINVAL ; 
 int MVPP2_F_DT_COMPAT ; 
#define  MVPP2_QDIST_MULTI_MODE 129 
#define  MVPP2_QDIST_SINGLE_MODE 128 
 int /*<<< orphan*/  MVPP2_QUEUE_VECTOR_PRIVATE ; 
 int /*<<< orphan*/  MVPP2_QUEUE_VECTOR_SHARED ; 
 int /*<<< orphan*/  NAPI_POLL_WEIGHT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mvpp2_poll ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct device_node*,char*) ; 
 int queue_mode ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int) ; 

__attribute__((used)) static int FUNC7(struct mvpp2_port *port,
					  struct device_node *port_node)
{
	struct mvpp2 *priv = port->priv;
	struct mvpp2_queue_vector *v;
	int i, ret;

	switch (queue_mode) {
	case MVPP2_QDIST_SINGLE_MODE:
		port->nqvecs = priv->nthreads + 1;
		break;
	case MVPP2_QDIST_MULTI_MODE:
		port->nqvecs = priv->nthreads;
		break;
	}

	for (i = 0; i < port->nqvecs; i++) {
		char irqname[16];

		v = port->qvecs + i;

		v->port = port;
		v->type = MVPP2_QUEUE_VECTOR_PRIVATE;
		v->sw_thread_id = i;
		v->sw_thread_mask = FUNC0(i);

		if (port->flags & MVPP2_F_DT_COMPAT)
			FUNC5(irqname, sizeof(irqname), "tx-cpu%d", i);
		else
			FUNC5(irqname, sizeof(irqname), "hif%d", i);

		if (queue_mode == MVPP2_QDIST_MULTI_MODE) {
			v->first_rxq = i;
			v->nrxqs = 1;
		} else if (queue_mode == MVPP2_QDIST_SINGLE_MODE &&
			   i == (port->nqvecs - 1)) {
			v->first_rxq = 0;
			v->nrxqs = port->nrxqs;
			v->type = MVPP2_QUEUE_VECTOR_SHARED;

			if (port->flags & MVPP2_F_DT_COMPAT)
				FUNC6(irqname, "rx-shared", sizeof(irqname));
		}

		if (port_node)
			v->irq = FUNC4(port_node, irqname);
		else
			v->irq = FUNC1(port->fwnode, i);
		if (v->irq <= 0) {
			ret = -EINVAL;
			goto err;
		}

		FUNC3(port->dev, &v->napi, mvpp2_poll,
			       NAPI_POLL_WEIGHT);
	}

	return 0;

err:
	for (i = 0; i < port->nqvecs; i++)
		FUNC2(port->qvecs[i].irq);
	return ret;
}