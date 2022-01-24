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
struct ofdpa_port {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BR_STATE_DISABLED ; 
 scalar_t__ FUNC0 (struct ofdpa_port*) ; 
 int FUNC1 (struct ofdpa_port*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct ofdpa_port *ofdpa_port, int flags)
{
	if (FUNC0(ofdpa_port))
		/* bridge STP will disable port */
		return 0;

	/* port is not bridged, so simulate going to DISABLED state */
	return FUNC1(ofdpa_port, flags,
				     BR_STATE_DISABLED);
}