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
struct ocelot_port {int /*<<< orphan*/  dev; } ;
typedef  enum tc_setup_type { ____Placeholder_tc_setup_type } tc_setup_type ;

/* Variables and functions */
 int EOPNOTSUPP ; 
#define  TC_SETUP_CLSFLOWER 129 
#define  TC_SETUP_CLSMATCHALL 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC1 (struct ocelot_port*,void*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void*) ; 

__attribute__((used)) static int FUNC3(enum tc_setup_type type,
				    void *type_data,
				    void *cb_priv, bool ingress)
{
	struct ocelot_port *port = cb_priv;

	if (!FUNC2(port->dev, type_data))
		return -EOPNOTSUPP;

	switch (type) {
	case TC_SETUP_CLSMATCHALL:
		FUNC0(port->dev, "tc_block_cb: TC_SETUP_CLSMATCHALL %s\n",
			   ingress ? "ingress" : "egress");

		return FUNC1(port, type_data, ingress);
	case TC_SETUP_CLSFLOWER:
		return 0;
	default:
		FUNC0(port->dev, "tc_block_cb: type %d %s\n",
			   type,
			   ingress ? "ingress" : "egress");

		return -EOPNOTSUPP;
	}
}