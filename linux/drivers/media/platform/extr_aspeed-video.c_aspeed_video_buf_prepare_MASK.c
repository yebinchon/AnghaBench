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
struct vb2_buffer {int /*<<< orphan*/  vb2_queue; } ;
struct aspeed_video {scalar_t__ max_compressed_size; } ;

/* Variables and functions */
 int EINVAL ; 
 struct aspeed_video* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct vb2_buffer*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct vb2_buffer *vb)
{
	struct aspeed_video *video = FUNC0(vb->vb2_queue);

	if (FUNC1(vb, 0) < video->max_compressed_size)
		return -EINVAL;

	return 0;
}