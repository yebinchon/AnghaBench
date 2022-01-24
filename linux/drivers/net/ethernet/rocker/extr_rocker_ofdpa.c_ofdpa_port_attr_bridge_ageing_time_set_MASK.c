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
struct switchdev_trans {int dummy; } ;
struct rocker_port {struct ofdpa_port* wpriv; } ;
struct ofdpa_port {scalar_t__ ageing_time; struct ofdpa* ofdpa; } ;
struct ofdpa {scalar_t__ ageing_time; int /*<<< orphan*/  fdb_cleanup_timer; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct switchdev_trans*) ; 

__attribute__((used)) static int
FUNC3(struct rocker_port *rocker_port,
				       u32 ageing_time,
				       struct switchdev_trans *trans)
{
	struct ofdpa_port *ofdpa_port = rocker_port->wpriv;
	struct ofdpa *ofdpa = ofdpa_port->ofdpa;

	if (!FUNC2(trans)) {
		ofdpa_port->ageing_time = FUNC0(ageing_time);
		if (ofdpa_port->ageing_time < ofdpa->ageing_time)
			ofdpa->ageing_time = ofdpa_port->ageing_time;
		FUNC1(&ofdpa_port->ofdpa->fdb_cleanup_timer, jiffies);
	}

	return 0;
}