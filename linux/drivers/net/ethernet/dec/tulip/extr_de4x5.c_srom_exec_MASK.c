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
typedef  int /*<<< orphan*/  u_short ;
typedef  int /*<<< orphan*/  u_long ;
typedef  int /*<<< orphan*/  u_char ;
struct net_device {int /*<<< orphan*/  base_addr; } ;
struct TYPE_2__ {int /*<<< orphan*/  csr13; int /*<<< orphan*/  csr14; } ;
struct de4x5_private {int ibn; scalar_t__ chipset; TYPE_1__ cache; } ;

/* Variables and functions */
 scalar_t__ DC21140 ; 
 int /*<<< orphan*/  DE4X5_SICR ; 
 int /*<<< orphan*/  DE4X5_STRR ; 
 int /*<<< orphan*/  RESET_SIA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct de4x5_private* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct net_device *dev, u_char *p)
{
    struct de4x5_private *lp = FUNC3(dev);
    u_long iobase = dev->base_addr;
    u_char count = (p ? *p++ : 0);
    u_short *w = (u_short *)p;

    if (((lp->ibn != 1) && (lp->ibn != 3) && (lp->ibn != 5)) || !count) return;

    if (lp->chipset != DC21140) RESET_SIA;

    while (count--) {
	FUNC0(((lp->chipset==DC21140) && (lp->ibn!=5) ?
		                                   *p++ : FUNC1(w++)), dev);
	FUNC2(2);                          /* 2ms per action */
    }

    if (lp->chipset != DC21140) {
	FUNC4(lp->cache.csr14, DE4X5_STRR);
	FUNC4(lp->cache.csr13, DE4X5_SICR);
    }
}