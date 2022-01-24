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
struct tw5864_input {int dummy; } ;
struct file {int dummy; } ;
typedef  enum tw5864_vid_std { ____Placeholder_tw5864_vid_std } tw5864_vid_std ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct tw5864_input*,int*) ; 
 struct tw5864_input* FUNC2 (struct file*) ; 

__attribute__((used)) static int FUNC3(struct file *file, void *priv, v4l2_std_id *std)
{
	struct tw5864_input *input = FUNC2(file);
	enum tw5864_vid_std tw_std;
	int ret;

	ret = FUNC1(input, &tw_std);
	if (ret)
		return ret;
	*std = FUNC0(tw_std);

	return 0;
}