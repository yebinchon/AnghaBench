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
struct vpdma_buf {size_t size; int mapped; scalar_t__ addr; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned long VPDMA_DESC_ALIGN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (size_t,int /*<<< orphan*/ ) ; 

int FUNC2(struct vpdma_buf *buf, size_t size)
{
	buf->size = size;
	buf->mapped = false;
	buf->addr = FUNC1(size, GFP_KERNEL);
	if (!buf->addr)
		return -ENOMEM;

	FUNC0(((unsigned long)buf->addr & VPDMA_DESC_ALIGN) != 0);

	return 0;
}