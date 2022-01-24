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
struct aq_hw_s {TYPE_1__* aq_fw_ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* set_state ) (struct aq_hw_s*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  MPI_RESET ; 
 int FUNC0 (struct aq_hw_s*) ; 
 int FUNC1 (struct aq_hw_s*) ; 
 int /*<<< orphan*/  FUNC2 (struct aq_hw_s*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct aq_hw_s *self)
{
	int err = 0;

	err = FUNC1(self);
	if (err)
		return err;

	self->aq_fw_ops->set_state(self, MPI_RESET);

	err = FUNC0(self);

	return err;
}