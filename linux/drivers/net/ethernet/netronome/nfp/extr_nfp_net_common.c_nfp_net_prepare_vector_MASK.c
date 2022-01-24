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
struct nfp_net_r_vector {int /*<<< orphan*/  irq_entry; int /*<<< orphan*/  irq_vector; int /*<<< orphan*/  affinity_mask; int /*<<< orphan*/  tasklet; int /*<<< orphan*/  napi; int /*<<< orphan*/  name; int /*<<< orphan*/  handler; } ;
struct TYPE_2__ {scalar_t__ netdev; } ;
struct nfp_net {TYPE_1__ dp; } ;

/* Variables and functions */
 int /*<<< orphan*/  NAPI_POLL_WEIGHT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 char* FUNC4 (struct nfp_net*) ; 
 int /*<<< orphan*/  nfp_net_poll ; 
 int /*<<< orphan*/  FUNC5 (struct nfp_net*,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct nfp_net*,char*,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nfp_net_r_vector*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC11(struct nfp_net *nn, struct nfp_net_r_vector *r_vec,
		       int idx)
{
	int err;

	/* Setup NAPI */
	if (nn->dp.netdev)
		FUNC2(nn->dp.netdev, &r_vec->napi,
			       nfp_net_poll, NAPI_POLL_WEIGHT);
	else
		FUNC10(&r_vec->tasklet);

	FUNC8(r_vec->name, sizeof(r_vec->name),
		 "%s-rxtx-%d", FUNC4(nn), idx);
	err = FUNC7(r_vec->irq_vector, r_vec->handler, 0, r_vec->name,
			  r_vec);
	if (err) {
		if (nn->dp.netdev)
			FUNC3(&r_vec->napi);
		else
			FUNC9(&r_vec->tasklet);

		FUNC6(nn, "Error requesting IRQ %d\n", r_vec->irq_vector);
		return err;
	}
	FUNC0(r_vec->irq_vector);

	FUNC1(r_vec->irq_vector, &r_vec->affinity_mask);

	FUNC5(nn, "RV%02d: irq=%03d/%03d\n", idx, r_vec->irq_vector,
	       r_vec->irq_entry);

	return 0;
}