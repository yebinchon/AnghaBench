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
struct tw686x_video_channel {unsigned int input; int /*<<< orphan*/  vidq; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 unsigned int TW686X_INPUTS_PER_CH ; 
 int /*<<< orphan*/  FUNC0 (struct tw686x_video_channel*,unsigned int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 struct tw686x_video_channel* FUNC2 (struct file*) ; 

__attribute__((used)) static int FUNC3(struct file *file, void *priv, unsigned int i)
{
	struct tw686x_video_channel *vc = FUNC2(file);

	if (i >= TW686X_INPUTS_PER_CH)
		return -EINVAL;
	if (i == vc->input)
		return 0;
	/*
	 * Not sure we are able to support on the fly input change
	 */
	if (FUNC1(&vc->vidq))
		return -EBUSY;

	FUNC0(vc, i);
	return 0;
}