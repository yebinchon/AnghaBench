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
struct device_node {int dummy; } ;

/* Variables and functions */
 struct device_node* FUNC0 (struct device_node const*,char*) ; 
 struct device_node* FUNC1 (struct device_node*,struct device_node*) ; 
 struct device_node* FUNC2 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC3 (struct device_node*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct device_node*) ; 

__attribute__((used)) static struct device_node *
FUNC5(const struct device_node *parent,
		 struct device_node *prev)
{
	struct device_node *port = NULL;

	if (!parent)
		return NULL;

	if (!prev) {
		struct device_node *ports;
		/*
		 * It's the first call, we have to find a port subnode
		 * within this node or within an optional 'ports' node.
		 */
		ports = FUNC0(parent, "ports");
		if (ports)
			parent = ports;

		port = FUNC0(parent, "port");

		/* release the 'ports' node */
		FUNC4(ports);
	} else {
		struct device_node *ports;

		ports = FUNC2(prev);
		if (!ports)
			return NULL;

		do {
			port = FUNC1(ports, prev);
			if (!port) {
				FUNC4(ports);
				return NULL;
			}
			prev = port;
		} while (!FUNC3(port, "port"));
		FUNC4(ports);
	}

	return port;
}