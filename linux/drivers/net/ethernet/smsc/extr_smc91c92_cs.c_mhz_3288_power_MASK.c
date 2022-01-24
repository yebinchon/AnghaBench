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
typedef  int /*<<< orphan*/  u_char ;
struct smc_private {scalar_t__ base; } ;
struct pcmcia_device {scalar_t__ config_base; struct net_device* priv; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ CISREG_COR ; 
 scalar_t__ MEGAHERTZ_ISR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct smc_private* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct pcmcia_device *link)
{
    struct net_device *dev = link->priv;
    struct smc_private *smc = FUNC1(dev);
    u_char tmp;

    /* Read the ISR twice... */
    FUNC2(smc->base+MEGAHERTZ_ISR);
    FUNC3(5);
    FUNC2(smc->base+MEGAHERTZ_ISR);

    /* Pause 200ms... */
    FUNC0(200);

    /* Now read and write the COR... */
    tmp = FUNC2(smc->base + link->config_base + CISREG_COR);
    FUNC3(5);
    FUNC4(tmp, smc->base + link->config_base + CISREG_COR);

    return 0;
}