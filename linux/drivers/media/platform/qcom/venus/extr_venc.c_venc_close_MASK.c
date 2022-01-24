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
struct venus_inst {TYPE_1__* core; int /*<<< orphan*/  fh; int /*<<< orphan*/  lock; int /*<<< orphan*/  m2m_dev; int /*<<< orphan*/  m2m_ctx; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev_enc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct venus_inst*) ; 
 int /*<<< orphan*/  FUNC1 (struct venus_inst*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct venus_inst* FUNC4 (struct file*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct venus_inst*) ; 

__attribute__((used)) static int FUNC10(struct file *file)
{
	struct venus_inst *inst = FUNC4(file);

	FUNC7(inst->m2m_ctx);
	FUNC8(inst->m2m_dev);
	FUNC9(inst);
	FUNC0(inst);
	FUNC2(&inst->lock);
	FUNC5(&inst->fh);
	FUNC6(&inst->fh);

	FUNC3(inst->core->dev_enc);

	FUNC1(inst);
	return 0;
}