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
typedef  int /*<<< orphan*/  u_long ;
struct net_device {int /*<<< orphan*/  base_addr; } ;
struct TYPE_2__ {int /*<<< orphan*/  save_cnt; } ;
struct de4x5_private {TYPE_1__ cache; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int /*<<< orphan*/  DE4X5_RESTORE_STATE ; 
 int /*<<< orphan*/  DE4X5_SAVE_STATE ; 
 int /*<<< orphan*/  START_DE4X5 ; 
 int /*<<< orphan*/  STOP_DE4X5 ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 struct de4x5_private* FUNC4 (struct net_device*) ; 

__attribute__((used)) static void
FUNC5(struct net_device *dev)
{
    struct de4x5_private *lp = FUNC4(dev);
    u_long iobase = dev->base_addr;
    s32 omr;

    if (!lp->cache.save_cnt) {
	STOP_DE4X5;
	FUNC3(dev);                          /* Flush any sent skb's */
	FUNC1(dev);
	FUNC0(dev, DE4X5_SAVE_STATE);
	FUNC2(dev);
	FUNC0(dev, DE4X5_RESTORE_STATE);
	lp->cache.save_cnt++;
	START_DE4X5;
    }
}