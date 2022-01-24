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
typedef  int /*<<< orphan*/  u32 ;
struct port {int /*<<< orphan*/  id; int /*<<< orphan*/  npe; } ;
struct msg {int /*<<< orphan*/  data32; int /*<<< orphan*/  hss_port; int /*<<< orphan*/  cmd; } ;
typedef  int /*<<< orphan*/  msg ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  PORT_ERROR_READ ; 
 int /*<<< orphan*/  FUNC1 (struct port*,struct msg*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct msg*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,struct msg*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u32 FUNC5(struct port *port)
{
	struct msg msg;

	FUNC2(&msg, 0, sizeof(msg));
	msg.cmd = PORT_ERROR_READ;
	msg.hss_port = port->id;
	FUNC1(port, &msg, "PORT_ERROR_READ");
	if (FUNC3(port->npe, &msg, "PORT_ERROR_READ")) {
		FUNC4("HSS-%i: unable to read HSS status\n", port->id);
		FUNC0();
	}

	return msg.data32;
}