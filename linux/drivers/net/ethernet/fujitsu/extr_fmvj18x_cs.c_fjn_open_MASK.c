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
struct pcmcia_device {int /*<<< orphan*/  open; } ;
struct net_device {int /*<<< orphan*/  name; } ;
struct local_info {int /*<<< orphan*/  open_time; scalar_t__ tx_queue_len; scalar_t__ tx_queue; scalar_t__ tx_started; struct pcmcia_device* p_dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  jiffies ; 
 struct local_info* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct pcmcia_device*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct net_device *dev)
{
    struct local_info *lp = FUNC1(dev);
    struct pcmcia_device *link = lp->p_dev;

    FUNC4("fjn_open('%s').\n", dev->name);

    if (!FUNC3(link))
	return -ENODEV;
    
    link->open++;
    
    FUNC0(dev);
    
    lp->tx_started = 0;
    lp->tx_queue = 0;
    lp->tx_queue_len = 0;
    lp->open_time = jiffies;
    FUNC2(dev);
    
    return 0;
}