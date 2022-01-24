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
struct video_event {int dummy; } ;
struct dvb_video_events {int eventw; int eventr; int overflow; int /*<<< orphan*/  wait_queue; int /*<<< orphan*/  lock; int /*<<< orphan*/ * events; } ;
struct av7110 {struct dvb_video_events video_events; } ;

/* Variables and functions */
 int MAX_VIDEO_EVENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct video_event*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct av7110 *av7110, struct video_event *event)
{
	struct dvb_video_events *events = &av7110->video_events;
	int wp;

	FUNC1(&events->lock);

	wp = (events->eventw + 1) % MAX_VIDEO_EVENT;
	if (wp == events->eventr) {
		events->overflow = 1;
		events->eventr = (events->eventr + 1) % MAX_VIDEO_EVENT;
	}

	//FIXME: timestamp?
	FUNC0(&events->events[events->eventw], event, sizeof(struct video_event));
	events->eventw = wp;

	FUNC2(&events->lock);

	FUNC3(&events->wait_queue);
}