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
struct nfp_net_r_vector {TYPE_1__* nfp_net; int /*<<< orphan*/  tasklet; int /*<<< orphan*/  irq_entry; int /*<<< orphan*/  lock; int /*<<< orphan*/  tx_ring; } ;
struct TYPE_2__ {int /*<<< orphan*/  dp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nfp_net_r_vector*) ; 
 scalar_t__ FUNC1 (struct nfp_net_r_vector*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(unsigned long arg)
{
	struct nfp_net_r_vector *r_vec = (void *)arg;

	FUNC5(&r_vec->lock);
	FUNC3(r_vec->tx_ring, 0);
	FUNC0(r_vec);
	FUNC6(&r_vec->lock);

	if (FUNC1(r_vec)) {
		FUNC2(r_vec->nfp_net, r_vec->irq_entry);
	} else {
		FUNC7(&r_vec->tasklet);
		FUNC4(&r_vec->nfp_net->dp,
			   "control message budget exceeded!\n");
	}
}