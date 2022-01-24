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
struct ehea_port {scalar_t__ state; int num_def_qps; TYPE_1__* port_res; int /*<<< orphan*/  adapter; } ;
struct TYPE_2__ {int /*<<< orphan*/  qp; } ;

/* Variables and functions */
 scalar_t__ EHEA_PORT_UP ; 
 int EIO ; 
 int /*<<< orphan*/  H_REG_BCMC ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ehea_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ehea_port*) ; 
 int FUNC3 (struct ehea_port*) ; 
 int FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int FUNC6 (struct ehea_port*,int) ; 
 int FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*,char*,...) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*,char*,int) ; 
 struct ehea_port* FUNC12 (struct net_device*) ; 

__attribute__((used)) static int FUNC13(struct net_device *dev)
{
	int ret, i;
	struct ehea_port *port = FUNC12(dev);

	if (port->state == EHEA_PORT_UP)
		return 0;

	ret = FUNC6(port, port->num_def_qps);
	if (ret) {
		FUNC10(dev, "port_res_failed\n");
		goto out;
	}

	/* Set default QP for this port */
	ret = FUNC3(port);
	if (ret) {
		FUNC10(dev, "ehea_configure_port failed. ret:%d\n", ret);
		goto out_clean_pr;
	}

	ret = FUNC7(dev);
	if (ret) {
		FUNC10(dev, "reg_interrupts failed. ret:%d\n", ret);
		goto out_clean_pr;
	}

	for (i = 0; i < port->num_def_qps; i++) {
		ret = FUNC0(port->adapter, port->port_res[i].qp);
		if (ret) {
			FUNC10(dev, "activate_qp failed\n");
			goto out_free_irqs;
		}
	}

	for (i = 0; i < port->num_def_qps; i++) {
		ret = FUNC4(&port->port_res[i]);
		if (ret) {
			FUNC10(dev, "out_free_irqs\n");
			goto out_free_irqs;
		}
	}

	ret = FUNC1(port, H_REG_BCMC);
	if (ret) {
		ret = -EIO;
		goto out_free_irqs;
	}

	port->state = EHEA_PORT_UP;

	ret = 0;
	goto out;

out_free_irqs:
	FUNC5(dev);

out_clean_pr:
	FUNC2(port);
out:
	if (ret)
		FUNC11(dev, "Failed starting. ret=%i\n", ret);

	FUNC8();
	FUNC9();

	return ret;
}