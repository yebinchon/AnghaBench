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
struct rocker_port {struct ofdpa_port* wpriv; } ;
struct ofdpa_port {int dummy; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct ofdpa_port*) ; 
 scalar_t__ FUNC1 (struct ofdpa_port*) ; 
 scalar_t__ FUNC2 (struct ofdpa_port*) ; 
 int FUNC3 (struct ofdpa_port*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct rocker_port *rocker_port,
				      struct net_device *master)
{
	struct ofdpa_port *ofdpa_port = rocker_port->wpriv;
	int err = 0;

	if (FUNC1(ofdpa_port))
		err = FUNC0(ofdpa_port);
	else if (FUNC2(ofdpa_port))
		err = FUNC3(ofdpa_port, NULL);
	return err;
}