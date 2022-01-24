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
typedef  scalar_t__ u32 ;
struct venc_state {scalar_t__ venc_base; } ;
struct v4l2_subdev {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 struct venc_state* FUNC1 (struct v4l2_subdev*) ; 

__attribute__((used)) static inline u32 FUNC2(struct v4l2_subdev *sd, u32 offset)
{
	struct venc_state *venc = FUNC1(sd);

	return FUNC0(venc->venc_base + offset);
}