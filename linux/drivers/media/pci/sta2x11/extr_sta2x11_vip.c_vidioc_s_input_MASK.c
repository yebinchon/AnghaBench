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
struct sta2x11_vip {unsigned int input; int /*<<< orphan*/  decoder; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  s_routing ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  video ; 
 struct sta2x11_vip* FUNC1 (struct file*) ; 

__attribute__((used)) static int FUNC2(struct file *file, void *priv, unsigned int i)
{
	struct sta2x11_vip *vip = FUNC1(file);
	int ret;

	if (i > 1)
		return -EINVAL;
	ret = FUNC0(vip->decoder, video, s_routing, i, 0, 0);

	if (!ret)
		vip->input = i;

	return 0;
}