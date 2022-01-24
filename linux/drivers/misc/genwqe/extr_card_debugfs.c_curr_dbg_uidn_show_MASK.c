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
struct seq_file {struct genwqe_dev* private; } ;
struct genwqe_reg {int dummy; } ;
struct genwqe_dev {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct seq_file*,struct genwqe_reg*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct genwqe_dev*,int,struct genwqe_reg*,int) ; 
 int FUNC2 (struct genwqe_dev*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct genwqe_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct genwqe_dev*) ; 
 struct genwqe_reg* FUNC5 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct genwqe_reg*) ; 

__attribute__((used)) static int FUNC7(struct seq_file *s, void *unused, int uid)
{
	struct genwqe_dev *cd = s->private;
	int entries;
	struct genwqe_reg *regs;

	entries = FUNC2(cd, uid);
	if (entries < 0)
		return -EINVAL;

	if (entries == 0)
		return 0;

	regs = FUNC5(entries, sizeof(*regs), GFP_KERNEL);
	if (regs == NULL)
		return -ENOMEM;

	FUNC4(cd); /* halt the traps while dumping data */
	FUNC1(cd, uid, regs, entries);
	FUNC3(cd);

	FUNC0(s, regs, entries);
	FUNC6(regs);
	return 0;
}