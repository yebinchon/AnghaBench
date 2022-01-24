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
struct hns3_enet_ring {int dummy; } ;
struct hns3_desc_cb {scalar_t__ type; scalar_t__ length; int /*<<< orphan*/  dma; } ;

/* Variables and functions */
 scalar_t__ DESC_TYPE_SKB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hns3_enet_ring*) ; 
 int /*<<< orphan*/  FUNC3 (struct hns3_enet_ring*) ; 

__attribute__((used)) static void FUNC4(struct hns3_enet_ring *ring,
			      struct hns3_desc_cb *cb)
{
	if (cb->type == DESC_TYPE_SKB)
		FUNC1(FUNC2(ring), cb->dma, cb->length,
				 FUNC3(ring));
	else if (cb->length)
		FUNC0(FUNC2(ring), cb->dma, cb->length,
			       FUNC3(ring));
}