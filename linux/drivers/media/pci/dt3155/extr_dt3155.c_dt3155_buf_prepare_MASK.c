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
struct dt3155_priv {int width; int height; } ;

/* Variables and functions */
 struct dt3155_priv* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct vb2_buffer*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct vb2_buffer *vb)
{
	struct dt3155_priv *pd = FUNC0(vb->vb2_queue);

	FUNC1(vb, 0, pd->width * pd->height);
	return 0;
}