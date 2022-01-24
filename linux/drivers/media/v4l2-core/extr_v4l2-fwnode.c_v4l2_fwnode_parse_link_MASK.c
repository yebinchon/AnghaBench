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
struct v4l2_fwnode_link {struct fwnode_handle* remote_node; int /*<<< orphan*/  remote_port; struct fwnode_handle* local_node; int /*<<< orphan*/  local_port; } ;
struct fwnode_handle {int dummy; } ;

/* Variables and functions */
 int ENOLINK ; 
 struct fwnode_handle* FUNC0 (struct fwnode_handle*) ; 
 struct fwnode_handle* FUNC1 (struct fwnode_handle*) ; 
 struct fwnode_handle* FUNC2 (struct fwnode_handle*) ; 
 int /*<<< orphan*/  FUNC3 (struct fwnode_handle*) ; 
 int /*<<< orphan*/  FUNC4 (struct fwnode_handle*,char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct fwnode_handle*) ; 
 int /*<<< orphan*/  FUNC6 (struct v4l2_fwnode_link*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct fwnode_handle*) ; 

int FUNC9(struct fwnode_handle *__fwnode,
			   struct v4l2_fwnode_link *link)
{
	const char *port_prop = FUNC5(__fwnode) ? "reg" : "port";
	struct fwnode_handle *fwnode;

	FUNC6(link, 0, sizeof(*link));

	fwnode = FUNC1(__fwnode);
	FUNC4(fwnode, port_prop, &link->local_port);
	fwnode = FUNC0(fwnode);
	if (FUNC5(fwnode) && FUNC7(FUNC8(fwnode), "ports"))
		fwnode = FUNC0(fwnode);
	link->local_node = fwnode;

	fwnode = FUNC2(__fwnode);
	if (!fwnode) {
		FUNC3(fwnode);
		return -ENOLINK;
	}

	fwnode = FUNC1(fwnode);
	FUNC4(fwnode, port_prop, &link->remote_port);
	fwnode = FUNC0(fwnode);
	if (FUNC5(fwnode) && FUNC7(FUNC8(fwnode), "ports"))
		fwnode = FUNC0(fwnode);
	link->remote_node = fwnode;

	return 0;
}