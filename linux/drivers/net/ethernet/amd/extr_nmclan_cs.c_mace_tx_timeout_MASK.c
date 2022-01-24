#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct pcmcia_device {int /*<<< orphan*/  socket; } ;
struct net_device {int dummy; } ;
struct TYPE_3__ {struct pcmcia_device* p_dev; } ;
typedef  TYPE_1__ mace_private ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*,char*) ; 
 TYPE_1__* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static void FUNC6(struct net_device *dev)
{
  mace_private *lp = FUNC1(dev);
  struct pcmcia_device *link = lp->p_dev;

  FUNC0(dev, "transmit timed out -- ");
#if RESET_ON_TIMEOUT
  pr_cont("resetting card\n");
  pcmcia_reset_card(link->socket);
#else /* #if RESET_ON_TIMEOUT */
  FUNC5("NOT resetting card\n");
#endif /* #if RESET_ON_TIMEOUT */
  FUNC2(dev); /* prevent tx timeout */
  FUNC3(dev);
}