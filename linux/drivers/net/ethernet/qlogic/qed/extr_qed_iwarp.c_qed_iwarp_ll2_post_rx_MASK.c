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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct qed_iwarp_ll2_buff {int /*<<< orphan*/  data_phys_addr; int /*<<< orphan*/  data; scalar_t__ buff_size; } ;
struct qed_hwfn {TYPE_2__* cdev; } ;
struct TYPE_4__ {TYPE_1__* pdev; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qed_hwfn*,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct qed_iwarp_ll2_buff*) ; 
 int FUNC3 (struct qed_hwfn*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct qed_iwarp_ll2_buff*,int) ; 

__attribute__((used)) static int
FUNC4(struct qed_hwfn *p_hwfn,
		      struct qed_iwarp_ll2_buff *buf, u8 handle)
{
	int rc;

	rc = FUNC3(p_hwfn, handle, buf->data_phys_addr,
				    (u16)buf->buff_size, buf, 1);
	if (rc) {
		FUNC0(p_hwfn,
			  "Failed to repost rx buffer to ll2 rc = %d, handle=%d\n",
			  rc, handle);
		FUNC1(&p_hwfn->cdev->pdev->dev, buf->buff_size,
				  buf->data, buf->data_phys_addr);
		FUNC2(buf);
	}

	return rc;
}