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
struct efx_nic {int dummy; } ;
struct efx_channel {int eventq_read_ptr; int eventq_mask; int /*<<< orphan*/  channel; struct efx_nic* efx; } ;
typedef  int /*<<< orphan*/  efx_dword_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  EFE_DD_EVQ_IND_RPTR_FLAGS_HIGH ; 
 int /*<<< orphan*/  EFE_DD_EVQ_IND_RPTR_FLAGS_LOW ; 
 scalar_t__ FUNC1 (struct efx_nic*) ; 
 int EFX_MAX_EVQ_SIZE ; 
 int EFX_MIN_EVQ_SIZE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ERF_DD_EVQ_IND_RPTR ; 
 int /*<<< orphan*/  ERF_DD_EVQ_IND_RPTR_FLAGS ; 
 int ERF_DD_EVQ_IND_RPTR_WIDTH ; 
 int /*<<< orphan*/  ERF_DZ_EVQ_RPTR ; 
 int /*<<< orphan*/  ER_DD_EVQ_INDIRECT ; 
 int /*<<< orphan*/  ER_DZ_EVQ_RPTR ; 
 int /*<<< orphan*/  FUNC4 (struct efx_nic*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct efx_channel *channel)
{
	struct efx_nic *efx = channel->efx;
	efx_dword_t rptr;

	if (FUNC1(efx)) {
		FUNC0(EFX_MIN_EVQ_SIZE <
			     (1 << ERF_DD_EVQ_IND_RPTR_WIDTH));
		FUNC0(EFX_MAX_EVQ_SIZE >
			     (1 << 2 * ERF_DD_EVQ_IND_RPTR_WIDTH));

		FUNC3(rptr, ERF_DD_EVQ_IND_RPTR_FLAGS,
				     EFE_DD_EVQ_IND_RPTR_FLAGS_HIGH,
				     ERF_DD_EVQ_IND_RPTR,
				     (channel->eventq_read_ptr &
				      channel->eventq_mask) >>
				     ERF_DD_EVQ_IND_RPTR_WIDTH);
		FUNC4(efx, &rptr, ER_DD_EVQ_INDIRECT,
				channel->channel);
		FUNC3(rptr, ERF_DD_EVQ_IND_RPTR_FLAGS,
				     EFE_DD_EVQ_IND_RPTR_FLAGS_LOW,
				     ERF_DD_EVQ_IND_RPTR,
				     channel->eventq_read_ptr &
				     ((1 << ERF_DD_EVQ_IND_RPTR_WIDTH) - 1));
		FUNC4(efx, &rptr, ER_DD_EVQ_INDIRECT,
				channel->channel);
	} else {
		FUNC2(rptr, ERF_DZ_EVQ_RPTR,
				     channel->eventq_read_ptr &
				     channel->eventq_mask);
		FUNC4(efx, &rptr, ER_DZ_EVQ_RPTR, channel->channel);
	}
}