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
struct service_processor {int /*<<< orphan*/  lock; struct event_buffer* event_buffer; } ;
struct ibmasm_event {unsigned int data_size; int /*<<< orphan*/  serial_number; int /*<<< orphan*/  data; } ;
struct event_buffer {size_t next_index; int /*<<< orphan*/  next_serial_number; struct ibmasm_event* events; } ;

/* Variables and functions */
 int /*<<< orphan*/  IBMASM_EVENT_MAX_SIZE ; 
 int IBMASM_NUM_EVENTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,void*,unsigned int) ; 
 unsigned int FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct service_processor*) ; 

void FUNC5(struct service_processor *sp, void *data, unsigned int data_size)
{
	struct event_buffer *buffer = sp->event_buffer;
	struct ibmasm_event *event;
	unsigned long flags;

	data_size = FUNC1(data_size, IBMASM_EVENT_MAX_SIZE);

	FUNC2(&sp->lock, flags);
	/* copy the event into the next slot in the circular buffer */
	event = &buffer->events[buffer->next_index];
	FUNC0(event->data, data, data_size);
	event->data_size = data_size;
	event->serial_number = buffer->next_serial_number;

	/* advance indices in the buffer */
	buffer->next_index = (buffer->next_index + 1) % IBMASM_NUM_EVENTS;
	buffer->next_serial_number++;
	FUNC3(&sp->lock, flags);

	FUNC4(sp);
}