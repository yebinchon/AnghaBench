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
typedef  int u8 ;
struct v4l2_input {int /*<<< orphan*/  status; int /*<<< orphan*/  std; int /*<<< orphan*/  name; int /*<<< orphan*/  type; scalar_t__ index; } ;
struct tw5864_input {int nr; struct tw5864_dev* root; } ;
struct tw5864_dev {int dummy; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  TW5864_NORMS ; 
 int /*<<< orphan*/  V4L2_INPUT_TYPE_CAMERA ; 
 int /*<<< orphan*/  V4L2_IN_ST_MACROVISION ; 
 int /*<<< orphan*/  V4L2_IN_ST_NO_COLOR ; 
 int /*<<< orphan*/  V4L2_IN_ST_NO_H_LOCK ; 
 int /*<<< orphan*/  V4L2_IN_ST_NO_SIGNAL ; 
 int /*<<< orphan*/  V4L2_IN_ST_NO_SYNC ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,char*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 struct tw5864_input* FUNC4 (struct file*) ; 

__attribute__((used)) static int FUNC5(struct file *file, void *priv,
			     struct v4l2_input *i)
{
	struct tw5864_input *input = FUNC4(file);
	struct tw5864_dev *dev = input->root;

	u8 indir_0x000 = FUNC3(FUNC0(input->nr));
	u8 indir_0x00d = FUNC3(FUNC1(input->nr));
	u8 v1 = indir_0x000;
	u8 v2 = indir_0x00d;

	if (i->index)
		return -EINVAL;

	i->type = V4L2_INPUT_TYPE_CAMERA;
	FUNC2(i->name, sizeof(i->name), "Encoder %d", input->nr);
	i->std = TW5864_NORMS;
	if (v1 & (1 << 7))
		i->status |= V4L2_IN_ST_NO_SYNC;
	if (!(v1 & (1 << 6)))
		i->status |= V4L2_IN_ST_NO_H_LOCK;
	if (v1 & (1 << 2))
		i->status |= V4L2_IN_ST_NO_SIGNAL;
	if (v1 & (1 << 1))
		i->status |= V4L2_IN_ST_NO_COLOR;
	if (v2 & (1 << 2))
		i->status |= V4L2_IN_ST_MACROVISION;

	return 0;
}