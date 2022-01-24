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
struct rc_dev {struct au0828_rc* priv; } ;
struct au0828_rc {int /*<<< orphan*/  polling; int /*<<< orphan*/  work; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  au0828_rc_work ; 
 int /*<<< orphan*/  FUNC1 (struct au0828_rc*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct rc_dev *rc)
{
	struct au0828_rc *ir = rc->priv;

	FUNC0(&ir->work, au0828_rc_work);

	/* Enable IR */
	FUNC1(ir, 0xe0, 1 << 4);

	FUNC3(&ir->work, FUNC2(ir->polling));

	return 0;
}