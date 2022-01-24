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
typedef  int /*<<< orphan*/  v4l2_std_id ;
struct file {int dummy; } ;
struct cx25821_channel {TYPE_1__* dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  tvnorm; } ;

/* Variables and functions */
 struct cx25821_channel* FUNC0 (struct file*) ; 

__attribute__((used)) static int FUNC1(struct file *file, void *priv, v4l2_std_id *tvnorms)
{
	struct cx25821_channel *chan = FUNC0(file);

	*tvnorms = chan->dev->tvnorm;
	return 0;
}