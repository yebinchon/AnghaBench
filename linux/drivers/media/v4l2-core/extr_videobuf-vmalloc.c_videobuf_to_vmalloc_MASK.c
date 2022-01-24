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
struct videobuf_vmalloc_memory {void* vaddr; int /*<<< orphan*/  magic; } ;
struct videobuf_buffer {struct videobuf_vmalloc_memory* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAGIC_VMAL_MEM ; 

void *FUNC2(struct videobuf_buffer *buf)
{
	struct videobuf_vmalloc_memory *mem = buf->priv;
	FUNC0(!mem);
	FUNC1(mem->magic, MAGIC_VMAL_MEM);

	return mem->vaddr;
}