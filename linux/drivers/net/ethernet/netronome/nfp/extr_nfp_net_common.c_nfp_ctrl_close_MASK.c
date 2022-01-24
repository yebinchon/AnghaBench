#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int num_r_vecs; } ;
struct nfp_net {TYPE_2__* r_vecs; TYPE_1__ dp; } ;
struct TYPE_4__ {int /*<<< orphan*/  tasklet; int /*<<< orphan*/  irq_vector; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nfp_net*) ; 
 int /*<<< orphan*/  FUNC2 (struct nfp_net*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct nfp_net *nn)
{
	int r;

	FUNC3();

	for (r = 0; r < nn->dp.num_r_vecs; r++) {
		FUNC0(nn->r_vecs[r].irq_vector);
		FUNC5(&nn->r_vecs[r].tasklet);
	}

	FUNC1(nn);

	FUNC2(nn);

	FUNC4();
}