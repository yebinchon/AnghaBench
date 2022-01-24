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
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u16 ;
struct qed_dev {TYPE_1__* p_iov_info; } ;
struct TYPE_2__ {scalar_t__ total_vfs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qed_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct qed_dev*,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct qed_dev *cdev, u8 to_disable)
{
	u16 i;

	if (!FUNC0(cdev))
		return;

	for (i = 0; i < cdev->p_iov_info->total_vfs; i++)
		FUNC1(cdev, i, to_disable);
}