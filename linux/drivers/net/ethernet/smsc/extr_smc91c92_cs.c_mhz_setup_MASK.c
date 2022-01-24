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
typedef  char u8 ;
struct pcmcia_device {char** prod_id; struct net_device* priv; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CISTPL_VERS_1 ; 
 scalar_t__ FUNC0 (struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 size_t FUNC2 (struct pcmcia_device*,int,char**) ; 
 int /*<<< orphan*/  pcmcia_get_versmac ; 
 int /*<<< orphan*/  FUNC3 (struct pcmcia_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net_device*) ; 

__attribute__((used)) static int FUNC4(struct pcmcia_device *link)
{
    struct net_device *dev = link->priv;
    size_t len;
    u8 *buf;
    int rc;

    /* Read the station address from the CIS.  It is stored as the last
       (fourth) string in the Version 1 Version/ID tuple. */
    if ((link->prod_id[3]) &&
	(FUNC0(dev, link->prod_id[3]) == 0))
	    return 0;

    /* Workarounds for broken cards start here. */
    /* Ugh -- the EM1144 card has two VERS_1 tuples!?! */
    if (!FUNC3(link, CISTPL_VERS_1, pcmcia_get_versmac, dev))
	    return 0;

    /* Another possibility: for the EM3288, in a special tuple */
    rc = -1;
    len = FUNC2(link, 0x81, &buf);
    if (buf && len >= 13) {
	    buf[12] = '\0';
	    if (FUNC0(dev, buf) == 0)
		    rc = 0;
    }
    FUNC1(buf);

    return rc;
}