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
typedef  int u32 ;
struct scif_rb {int current_read_offset; int size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct scif_rb*,void*,void*,int) ; 
 void* FUNC1 (struct scif_rb*,int) ; 

u32 FUNC2(struct scif_rb *rb, void *msg, u32 size)
{
	void *header = NULL;
	int read_size = 0;

	header = FUNC1(rb, size);
	if (header) {
		u32 next_cmd_offset =
			(rb->current_read_offset + size) & (rb->size - 1);

		read_size = size;
		rb->current_read_offset = next_cmd_offset;
		FUNC0(rb, header, msg, size);
	}
	return read_size;
}