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
struct venus_buffer {int /*<<< orphan*/  flags; } ;
struct vb2_v4l2_buffer {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  HFI_BUFFERFLAG_READONLY ; 
 struct venus_buffer* FUNC0 (struct vb2_v4l2_buffer*) ; 

void FUNC1(struct vb2_v4l2_buffer *vbuf)
{
	struct venus_buffer *buf = FUNC0(vbuf);

	buf->flags |= HFI_BUFFERFLAG_READONLY;
}