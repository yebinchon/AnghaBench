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
struct TYPE_2__ {int /*<<< orphan*/  lp; } ;
struct vnet_port {TYPE_1__ vio; } ;
struct vio_msg_tag {int /*<<< orphan*/  sid; int /*<<< orphan*/  stype_env; int /*<<< orphan*/  stype; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int ECONNRESET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

__attribute__((used)) static int FUNC2(struct vnet_port *port, void *arg)
{
	struct vio_msg_tag *pkt = arg;

	FUNC1("Received unknown msg [%02x:%02x:%04x:%08x]\n",
	       pkt->type, pkt->stype, pkt->stype_env, pkt->sid);
	FUNC1("Resetting connection\n");

	FUNC0(port->vio.lp);

	return -ECONNRESET;
}