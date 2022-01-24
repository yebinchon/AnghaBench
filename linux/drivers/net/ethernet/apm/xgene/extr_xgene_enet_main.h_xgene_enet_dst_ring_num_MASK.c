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
typedef  int u16 ;
struct xgene_enet_pdata {scalar_t__ rm; } ;
struct xgene_enet_desc_ring {int num; int /*<<< orphan*/  ndev; } ;

/* Variables and functions */
 struct xgene_enet_pdata* FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline u16 FUNC1(struct xgene_enet_desc_ring *ring)
{
	struct xgene_enet_pdata *pdata = FUNC0(ring->ndev);

	return ((u16)pdata->rm << 10) | ring->num;
}