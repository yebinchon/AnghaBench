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
typedef  int u32 ;
struct ravb_ptp_perout {int /*<<< orphan*/  target; scalar_t__ period; } ;
struct TYPE_2__ {struct ravb_ptp_perout* perout; int /*<<< orphan*/  clock; } ;
struct ravb_private {TYPE_1__ ptp; } ;
struct ptp_clock_event {int timestamp; scalar_t__ index; int /*<<< orphan*/  type; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GCPT ; 
 int /*<<< orphan*/  GIC ; 
 int /*<<< orphan*/  GIS ; 
 int GIS_PTCF ; 
 int GIS_PTMF ; 
 int GIS_RESERVED ; 
 int /*<<< orphan*/  PTP_CLOCK_EXTTS ; 
 struct ravb_private* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct ptp_clock_event*) ; 
 int /*<<< orphan*/  FUNC2 (struct ravb_private*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,int,int /*<<< orphan*/ ) ; 

void FUNC5(struct net_device *ndev)
{
	struct ravb_private *priv = FUNC0(ndev);
	u32 gis = FUNC3(ndev, GIS);

	gis &= FUNC3(ndev, GIC);
	if (gis & GIS_PTCF) {
		struct ptp_clock_event event;

		event.type = PTP_CLOCK_EXTTS;
		event.index = 0;
		event.timestamp = FUNC3(ndev, GCPT);
		FUNC1(priv->ptp.clock, &event);
	}
	if (gis & GIS_PTMF) {
		struct ravb_ptp_perout *perout = priv->ptp.perout;

		if (perout->period) {
			perout->target += perout->period;
			FUNC2(priv, perout->target);
		}
	}

	FUNC4(ndev, ~(gis | GIS_RESERVED), GIS);
}