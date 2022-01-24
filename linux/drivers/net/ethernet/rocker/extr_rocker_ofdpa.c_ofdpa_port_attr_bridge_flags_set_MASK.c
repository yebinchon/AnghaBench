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
struct switchdev_trans {int dummy; } ;
struct rocker_port {struct ofdpa_port* wpriv; } ;
struct ofdpa_port {unsigned long brport_flags; int /*<<< orphan*/  rocker_port; } ;

/* Variables and functions */
 unsigned long BR_LEARNING ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (struct switchdev_trans*) ; 

__attribute__((used)) static int FUNC2(struct rocker_port *rocker_port,
					    unsigned long brport_flags,
					    struct switchdev_trans *trans)
{
	struct ofdpa_port *ofdpa_port = rocker_port->wpriv;
	unsigned long orig_flags;
	int err = 0;

	orig_flags = ofdpa_port->brport_flags;
	ofdpa_port->brport_flags = brport_flags;
	if ((orig_flags ^ ofdpa_port->brport_flags) & BR_LEARNING &&
	    !FUNC1(trans))
		err = FUNC0(ofdpa_port->rocker_port,
					       !!(ofdpa_port->brport_flags & BR_LEARNING));

	if (FUNC1(trans))
		ofdpa_port->brport_flags = orig_flags;

	return err;
}