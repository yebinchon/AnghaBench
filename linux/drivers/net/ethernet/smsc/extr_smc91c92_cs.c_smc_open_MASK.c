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
struct smc_private {int /*<<< orphan*/  media; scalar_t__ packets_waiting; int /*<<< orphan*/ * saved_skb; struct pcmcia_device* p_dev; } ;
struct pcmcia_device {int /*<<< orphan*/  open; int /*<<< orphan*/  dev; } ;
struct net_device {scalar_t__ base_addr; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 scalar_t__ BANK_SELECT ; 
 int ENODEV ; 
 scalar_t__ HZ ; 
 scalar_t__ FUNC0 (struct pcmcia_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  media_check ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,char*) ; 
 struct smc_private* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct pcmcia_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct net_device *dev)
{
    struct smc_private *smc = FUNC5(dev);
    struct pcmcia_device *link = smc->p_dev;

    FUNC1(&link->dev, "%s: smc_open(%p), ID/Window %4.4x.\n",
	  dev->name, dev, FUNC2(dev->base_addr + BANK_SELECT));
#ifdef PCMCIA_DEBUG
    smc_dump(dev);
#endif

    /* Check that the PCMCIA card is still here. */
    if (!FUNC7(link))
	return -ENODEV;
    /* Physical device present signature. */
    if (FUNC0(link) < 0) {
	FUNC4(dev, "Yikes!  Bad chip signature!\n");
	return -ENODEV;
    }
    link->open++;

    FUNC6(dev);
    smc->saved_skb = NULL;
    smc->packets_waiting = 0;

    FUNC9(dev);
    FUNC10(&smc->media, media_check, 0);
    FUNC3(&smc->media, jiffies + HZ);

    return 0;
}