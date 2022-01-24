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
struct mvpp2_port {int nrxqs; int /*<<< orphan*/ * rxqs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mvpp2_port*) ; 
 int FUNC1 (struct mvpp2_port*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct mvpp2_port *port)
{
	int queue, err;

	for (queue = 0; queue < port->nrxqs; queue++) {
		err = FUNC1(port, port->rxqs[queue]);
		if (err)
			goto err_cleanup;
	}
	return 0;

err_cleanup:
	FUNC0(port);
	return err;
}