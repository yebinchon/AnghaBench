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
typedef  int /*<<< orphan*/  u_long ;
struct net_device_stats {int rx_missed_errors; } ;
struct net_device {int /*<<< orphan*/  base_addr; } ;
struct de4x5_private {struct net_device_stats stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  DE4X5_MFC ; 
 int MFC_CNTR ; 
 int MFC_OVFL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 struct de4x5_private* FUNC1 (struct net_device*) ; 

__attribute__((used)) static struct net_device_stats *
FUNC2(struct net_device *dev)
{
    struct de4x5_private *lp = FUNC1(dev);
    u_long iobase = dev->base_addr;

    lp->stats.rx_missed_errors = (int)(FUNC0(DE4X5_MFC) & (MFC_OVFL | MFC_CNTR));

    return &lp->stats;
}