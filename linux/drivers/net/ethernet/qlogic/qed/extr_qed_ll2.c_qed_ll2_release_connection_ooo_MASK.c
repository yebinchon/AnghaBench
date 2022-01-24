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
struct qed_ooo_buffer {int /*<<< orphan*/  rx_buffer_phys_addr; int /*<<< orphan*/  rx_buffer_virt_addr; int /*<<< orphan*/  rx_buffer_size; } ;
struct TYPE_4__ {scalar_t__ conn_type; } ;
struct qed_ll2_info {TYPE_1__ input; } ;
struct qed_hwfn {TYPE_3__* cdev; int /*<<< orphan*/  p_ooo_info; } ;
struct TYPE_6__ {TYPE_2__* pdev; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ QED_LL2_TYPE_OOO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct qed_ooo_buffer*) ; 
 struct qed_ooo_buffer* FUNC2 (struct qed_hwfn*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct qed_hwfn*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct qed_hwfn *p_hwfn,
					   struct qed_ll2_info *p_ll2_conn)
{
	struct qed_ooo_buffer *p_buffer;

	if (p_ll2_conn->input.conn_type != QED_LL2_TYPE_OOO)
		return;

	FUNC3(p_hwfn, p_hwfn->p_ooo_info);
	while ((p_buffer = FUNC2(p_hwfn,
						   p_hwfn->p_ooo_info))) {
		FUNC0(&p_hwfn->cdev->pdev->dev,
				  p_buffer->rx_buffer_size,
				  p_buffer->rx_buffer_virt_addr,
				  p_buffer->rx_buffer_phys_addr);
		FUNC1(p_buffer);
	}
}