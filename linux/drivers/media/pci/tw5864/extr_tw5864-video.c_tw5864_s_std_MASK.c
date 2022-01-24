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
typedef  int /*<<< orphan*/  v4l2_std_id ;
struct tw5864_input {int /*<<< orphan*/  std; int /*<<< orphan*/  nr; int /*<<< orphan*/  v4l2_std; struct tw5864_dev* root; } ;
struct tw5864_dev {int dummy; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct tw5864_input* FUNC3 (struct file*) ; 

__attribute__((used)) static int FUNC4(struct file *file, void *priv, v4l2_std_id std)
{
	struct tw5864_input *input = FUNC3(file);
	struct tw5864_dev *dev = input->root;

	input->v4l2_std = std;
	input->std = FUNC1(std);
	FUNC2(FUNC0(input->nr), input->std);
	return 0;
}