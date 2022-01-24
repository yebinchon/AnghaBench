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
struct hns3_enet_ring {struct hns3_desc_cb* desc_cb; } ;
struct hns3_desc_cb {int /*<<< orphan*/  dma; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hns3_enet_ring*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct hns3_enet_ring*,struct hns3_desc_cb*) ; 

__attribute__((used)) static void FUNC2(struct hns3_enet_ring *ring, int i)
{
	struct hns3_desc_cb *cb = &ring->desc_cb[i];

	if (!ring->desc_cb[i].dma)
		return;

	FUNC0(ring, i);
	FUNC1(ring, cb);
}