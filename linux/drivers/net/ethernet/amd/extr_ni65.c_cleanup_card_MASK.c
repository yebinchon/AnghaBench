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
struct priv {size_t cardno; } ;
struct net_device {int /*<<< orphan*/  base_addr; int /*<<< orphan*/  dma; struct priv* ml_priv; } ;
struct TYPE_2__ {int /*<<< orphan*/  total_size; } ;

/* Variables and functions */
 TYPE_1__* cards ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct priv*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct net_device *dev)
{
	struct priv *p = dev->ml_priv;
	FUNC0(dev->dma);
	FUNC1(dev->dma);
	FUNC3(dev->base_addr, cards[p->cardno].total_size);
	FUNC2(p);
}