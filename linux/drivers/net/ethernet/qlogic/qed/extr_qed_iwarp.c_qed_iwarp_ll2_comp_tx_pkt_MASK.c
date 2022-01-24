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
typedef  scalar_t__ u8 ;
struct qed_iwarp_ll2_buff {struct qed_iwarp_ll2_buff* piggy_buf; } ;
struct qed_hwfn {TYPE_2__* p_rdma_info; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_3__ {scalar_t__ ll2_mpa_handle; } ;
struct TYPE_4__ {TYPE_1__ iwarp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qed_hwfn*,struct qed_iwarp_ll2_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct qed_hwfn*) ; 

__attribute__((used)) static void FUNC2(void *cxt, u8 connection_handle,
				      void *cookie, dma_addr_t first_frag_addr,
				      bool b_last_fragment, bool b_last_packet)
{
	struct qed_iwarp_ll2_buff *buffer = cookie;
	struct qed_iwarp_ll2_buff *piggy;
	struct qed_hwfn *p_hwfn = cxt;

	if (!buffer)		/* can happen in packed mpa unaligned... */
		return;

	/* this was originally an rx packet, post it back */
	piggy = buffer->piggy_buf;
	if (piggy) {
		buffer->piggy_buf = NULL;
		FUNC0(p_hwfn, piggy, connection_handle);
	}

	FUNC0(p_hwfn, buffer, connection_handle);

	if (connection_handle == p_hwfn->p_rdma_info->iwarp.ll2_mpa_handle)
		FUNC1(p_hwfn);

	return;
}