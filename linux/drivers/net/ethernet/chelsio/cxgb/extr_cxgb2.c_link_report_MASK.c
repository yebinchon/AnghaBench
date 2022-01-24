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
struct TYPE_2__ {int speed; scalar_t__ duplex; } ;
struct port_info {TYPE_1__ link_config; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ DUPLEX_FULL ; 
#define  SPEED_100 130 
#define  SPEED_1000 129 
#define  SPEED_10000 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct port_info *p)
{
	if (!FUNC1(p->dev))
		FUNC0(p->dev, "link down\n");
	else {
		const char *s = "10Mbps";

		switch (p->link_config.speed) {
			case SPEED_10000: s = "10Gbps"; break;
			case SPEED_1000:  s = "1000Mbps"; break;
			case SPEED_100:   s = "100Mbps"; break;
		}

		FUNC0(p->dev, "link up, %s, %s-duplex\n",
			    s, p->link_config.duplex == DUPLEX_FULL
			    ? "full" : "half");
	}
}