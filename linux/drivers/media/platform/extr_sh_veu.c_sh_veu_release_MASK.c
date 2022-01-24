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
struct sh_veu_file {int /*<<< orphan*/  fh; } ;
struct sh_veu_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/ * m2m_ctx; struct sh_veu_file* capture; struct sh_veu_file* output; } ;
struct file {struct sh_veu_file* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  V4L2_BUF_TYPE_VIDEO_CAPTURE ; 
 int /*<<< orphan*/  V4L2_BUF_TYPE_VIDEO_OUTPUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,struct sh_veu_file*) ; 
 int /*<<< orphan*/  FUNC1 (struct sh_veu_file*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 struct sh_veu_dev* FUNC8 (struct file*) ; 

__attribute__((used)) static int FUNC9(struct file *file)
{
	struct sh_veu_dev *veu = FUNC8(file);
	struct sh_veu_file *veu_file = file->private_data;

	FUNC0(veu->dev, "Releasing instance %p\n", veu_file);

	if (veu_file == veu->capture) {
		veu->capture = NULL;
		FUNC7(FUNC6(veu->m2m_ctx, V4L2_BUF_TYPE_VIDEO_CAPTURE));
	}

	if (veu_file == veu->output) {
		veu->output = NULL;
		FUNC7(FUNC6(veu->m2m_ctx, V4L2_BUF_TYPE_VIDEO_OUTPUT));
	}

	if (!veu->output && !veu->capture && veu->m2m_ctx) {
		FUNC5(veu->m2m_ctx);
		veu->m2m_ctx = NULL;
	}

	FUNC2(veu->dev);
	FUNC3(&veu_file->fh);
	FUNC4(&veu_file->fh);

	FUNC1(veu_file);

	return 0;
}