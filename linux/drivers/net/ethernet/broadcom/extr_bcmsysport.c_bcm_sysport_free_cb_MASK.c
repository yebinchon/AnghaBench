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
struct bcm_sysport_cb {int /*<<< orphan*/ * skb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dma_addr ; 
 int /*<<< orphan*/  FUNC1 (struct bcm_sysport_cb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct bcm_sysport_cb *cb)
{
	FUNC0(cb->skb);
	cb->skb = NULL;
	FUNC1(cb, dma_addr, 0);
}