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
struct xsdfec_dev {int /*<<< orphan*/  flags; int /*<<< orphan*/  error_data_lock; scalar_t__ cecc_count; scalar_t__ uecc_count; scalar_t__ isr_err_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct xsdfec_dev *xsdfec)
{
	FUNC0(&xsdfec->error_data_lock, xsdfec->flags);
	xsdfec->isr_err_count = 0;
	xsdfec->uecc_count = 0;
	xsdfec->cecc_count = 0;
	FUNC1(&xsdfec->error_data_lock, xsdfec->flags);

	return 0;
}