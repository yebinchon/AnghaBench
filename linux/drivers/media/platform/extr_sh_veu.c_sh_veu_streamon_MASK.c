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
struct sh_veu_file {int cfg_needed; struct sh_veu_dev* veu_dev; } ;
struct sh_veu_dev {int aborting; int /*<<< orphan*/  m2m_ctx; scalar_t__ xaction; } ;
struct file {int dummy; } ;
typedef  enum v4l2_buf_type { ____Placeholder_v4l2_buf_type } v4l2_buf_type ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (struct sh_veu_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct sh_veu_dev*,struct sh_veu_file*,int) ; 
 int FUNC2 (struct file*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct file *file, void *priv,
			   enum v4l2_buf_type type)
{
	struct sh_veu_file *veu_file = priv;

	if (!FUNC1(veu_file->veu_dev, veu_file, type))
		return -EBUSY;

	if (veu_file->cfg_needed) {
		struct sh_veu_dev *veu = veu_file->veu_dev;
		veu_file->cfg_needed = false;
		FUNC0(veu_file->veu_dev);
		veu->xaction = 0;
		veu->aborting = false;
	}

	return FUNC2(file, veu_file->veu_dev->m2m_ctx, type);
}