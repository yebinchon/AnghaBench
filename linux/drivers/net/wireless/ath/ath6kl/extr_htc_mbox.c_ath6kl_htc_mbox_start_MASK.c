#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct htc_target {TYPE_1__* dev; int /*<<< orphan*/  tgt_creds; int /*<<< orphan*/  cred_dist_list; int /*<<< orphan*/  credit_info; scalar_t__ rx_st_flags; scalar_t__ htc_flags; } ;
struct htc_packet {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  irq_proc_reg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct htc_target*) ; 
 int /*<<< orphan*/  FUNC4 (struct htc_target*) ; 
 int FUNC5 (struct htc_target*,struct htc_packet*) ; 
 struct htc_packet* FUNC6 (struct htc_target*,int) ; 
 int FUNC7 (struct htc_target*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC9(struct htc_target *target)
{
	struct htc_packet *packet;
	int status;

	FUNC8(&target->dev->irq_proc_reg, 0,
	       sizeof(target->dev->irq_proc_reg));

	/* Disable interrupts at the chip level */
	FUNC1(target->dev);

	target->htc_flags = 0;
	target->rx_st_flags = 0;

	/* Push control receive buffers into htc control endpoint */
	while ((packet = FUNC6(target, false)) != NULL) {
		status = FUNC5(target, packet);
		if (status)
			return status;
	}

	/* NOTE: the first entry in the distribution list is ENDPOINT_0 */
	FUNC0(target->credit_info, &target->cred_dist_list,
			   target->tgt_creds);

	FUNC4(target);

	/* Indicate to the target of the setup completion */
	status = FUNC7(target);

	if (status)
		return status;

	/* unmask interrupts */
	status = FUNC2(target->dev);

	if (status)
		FUNC3(target);

	return status;
}