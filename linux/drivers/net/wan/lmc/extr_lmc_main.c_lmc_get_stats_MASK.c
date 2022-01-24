#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct net_device_stats {int rx_missed_errors; } ;
struct net_device {int dummy; } ;
struct TYPE_6__ {TYPE_1__* lmc_device; int /*<<< orphan*/  lmc_lock; } ;
typedef  TYPE_2__ lmc_softc_t ;
struct TYPE_5__ {struct net_device_stats stats; } ;

/* Variables and functions */
 int FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  csr_missed_frames ; 
 TYPE_2__* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static struct net_device_stats *FUNC5(struct net_device *dev)
{
    lmc_softc_t *sc = FUNC1(dev);
    unsigned long flags;

    FUNC2(dev, "lmc_get_stats in");

    FUNC3(&sc->lmc_lock, flags);

    sc->lmc_device->stats.rx_missed_errors += FUNC0(sc, csr_missed_frames) & 0xffff;

    FUNC4(&sc->lmc_lock, flags);

    FUNC2(dev, "lmc_get_stats out");

    return &sc->lmc_device->stats;
}