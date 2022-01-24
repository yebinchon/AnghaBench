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
struct net_device {int /*<<< orphan*/  base_addr; } ;
struct de4x5_private {scalar_t__ media; scalar_t__ c_media; int tx_enable; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  DE4X5_TPD ; 
 int /*<<< orphan*/  POLL_DEMAND ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 struct de4x5_private* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(struct net_device *dev)
{
    struct de4x5_private *lp = FUNC3(dev);
    u_long iobase = dev->base_addr;
    u_long flags = 0;

    if (lp->media != lp->c_media) {
        FUNC0(dev);
	lp->c_media = lp->media;          /* Stop scrolling media messages */
    }

    FUNC6(&lp->lock, flags);
    FUNC1(dev);
    FUNC2(dev);
    lp->tx_enable = true;
    FUNC7(&lp->lock, flags);
    FUNC5(POLL_DEMAND, DE4X5_TPD);

    FUNC4(dev);
}