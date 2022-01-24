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
typedef  scalar_t__ u_short ;
struct pcmcia_device {TYPE_1__** resource; int /*<<< orphan*/  dev; struct net_device* priv; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ start; } ;

/* Variables and functions */
 scalar_t__ MANFID_OSITECH ; 
 scalar_t__ MANFID_PSION ; 
 scalar_t__ OSITECH_AUI_PWR ; 
 scalar_t__ OSITECH_RESET_ISR ; 
 scalar_t__ PRODID_OSITECH_SEVEN ; 
 scalar_t__ PRODID_PSION_NET100 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int FUNC2 (struct pcmcia_device*) ; 
 scalar_t__ FUNC3 (struct pcmcia_device*,int,int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  pcmcia_osi_mac ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct pcmcia_device *link, u_short manfid, u_short cardid)
{
    struct net_device *dev = link->priv;
    int rc;

    /* Read the station address from tuple 0x90, subtuple 0x04 */
    if (FUNC3(link, 0x90, pcmcia_osi_mac, dev))
	    return -1;

    if (((manfid == MANFID_OSITECH) &&
	 (cardid == PRODID_OSITECH_SEVEN)) ||
	((manfid == MANFID_PSION) &&
	 (cardid == PRODID_PSION_NET100))) {
	rc = FUNC2(link);
	if (rc)
		return rc;
    } else if (manfid == MANFID_OSITECH) {
	/* Make sure both functions are powered up */
	FUNC4(0x300, link->resource[0]->start + OSITECH_AUI_PWR);
	/* Now, turn on the interrupt for both card functions */
	FUNC4(0x300, link->resource[0]->start + OSITECH_RESET_ISR);
	FUNC0(&link->dev, "AUI/PWR: %4.4x RESET/ISR: %4.4x\n",
	      FUNC1(link->resource[0]->start + OSITECH_AUI_PWR),
	      FUNC1(link->resource[0]->start + OSITECH_RESET_ISR));
    }
    return 0;
}