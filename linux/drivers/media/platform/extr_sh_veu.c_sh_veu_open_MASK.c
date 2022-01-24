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
struct sh_veu_file {int cfg_needed; int /*<<< orphan*/  fh; struct sh_veu_dev* veu_dev; } ;
struct sh_veu_dev {int /*<<< orphan*/  dev; } ;
struct file {struct sh_veu_file* private_data; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,struct sh_veu_file*) ; 
 struct sh_veu_file* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct file*) ; 
 struct sh_veu_dev* FUNC6 (struct file*) ; 

__attribute__((used)) static int FUNC7(struct file *file)
{
	struct sh_veu_dev *veu = FUNC6(file);
	struct sh_veu_file *veu_file;

	veu_file = FUNC1(sizeof(*veu_file), GFP_KERNEL);
	if (!veu_file)
		return -ENOMEM;

	FUNC4(&veu_file->fh, FUNC5(file));
	veu_file->veu_dev = veu;
	veu_file->cfg_needed = true;

	file->private_data = veu_file;

	FUNC2(veu->dev);
	FUNC3(&veu_file->fh);

	FUNC0(veu->dev, "Created instance %p\n", veu_file);

	return 0;
}