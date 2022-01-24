#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {unsigned int num_r_vecs; int /*<<< orphan*/  netdev; } ;
struct nfp_net {int link_up; TYPE_3__ dp; TYPE_1__* r_vecs; TYPE_2__* irq_entries; } ;
struct TYPE_5__ {int /*<<< orphan*/  vector; } ;
struct TYPE_4__ {int /*<<< orphan*/  napi; int /*<<< orphan*/  irq_vector; } ;

/* Variables and functions */
 size_t NFP_NET_IRQ_LSC_IDX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct nfp_net *nn)
{
	unsigned int r;

	FUNC0(nn->irq_entries[NFP_NET_IRQ_LSC_IDX].vector);
	FUNC2(nn->dp.netdev);
	nn->link_up = false;

	for (r = 0; r < nn->dp.num_r_vecs; r++) {
		FUNC0(nn->r_vecs[r].irq_vector);
		FUNC1(&nn->r_vecs[r].napi);
	}

	FUNC3(nn->dp.netdev);
}