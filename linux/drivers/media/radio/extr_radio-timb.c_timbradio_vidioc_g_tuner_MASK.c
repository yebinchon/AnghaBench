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
struct v4l2_tuner {int dummy; } ;
struct timbradio {int /*<<< orphan*/  sd_tuner; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  g_tuner ; 
 int /*<<< orphan*/  tuner ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct v4l2_tuner*) ; 
 struct timbradio* FUNC1 (struct file*) ; 

__attribute__((used)) static int FUNC2(struct file *file, void *priv,
	struct v4l2_tuner *v)
{
	struct timbradio *tr = FUNC1(file);
	return FUNC0(tr->sd_tuner, tuner, g_tuner, v);
}