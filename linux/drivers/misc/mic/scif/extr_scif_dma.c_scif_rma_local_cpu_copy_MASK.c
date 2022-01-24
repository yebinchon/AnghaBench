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
typedef  void u8 ;
struct scif_window {size_t offset; size_t nr_pages; } ;
typedef  size_t s64 ;

/* Variables and functions */
 size_t PAGE_MASK ; 
 size_t PAGE_SHIFT ; 
 int PAGE_SIZE ; 
 void* FUNC0 (size_t,struct scif_window*,size_t) ; 
 int /*<<< orphan*/  list ; 
 struct scif_window* FUNC1 (struct scif_window*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*,void*,size_t) ; 
 size_t FUNC3 (int,size_t) ; 

__attribute__((used)) static void FUNC4(s64 offset, struct scif_window *window,
				    u8 *temp, size_t rem_len, bool to_temp)
{
	void *window_virt;
	size_t loop_len;
	int offset_in_page;
	s64 end_offset;

	offset_in_page = offset & ~PAGE_MASK;
	loop_len = PAGE_SIZE - offset_in_page;

	if (rem_len < loop_len)
		loop_len = rem_len;

	window_virt = FUNC0(offset, window, loop_len);
	if (!window_virt)
		return;
	if (to_temp)
		FUNC2(temp, window_virt, loop_len);
	else
		FUNC2(window_virt, temp, loop_len);

	offset += loop_len;
	temp += loop_len;
	rem_len -= loop_len;

	end_offset = window->offset +
		(window->nr_pages << PAGE_SHIFT);
	while (rem_len) {
		if (offset == end_offset) {
			window = FUNC1(window, list);
			end_offset = window->offset +
				(window->nr_pages << PAGE_SHIFT);
		}
		loop_len = FUNC3(PAGE_SIZE, rem_len);
		window_virt = FUNC0(offset, window, loop_len);
		if (!window_virt)
			return;
		if (to_temp)
			FUNC2(temp, window_virt, loop_len);
		else
			FUNC2(window_virt, temp, loop_len);
		offset	+= loop_len;
		temp	+= loop_len;
		rem_len	-= loop_len;
	}
}