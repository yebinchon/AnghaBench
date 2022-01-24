#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct videobuf_queue {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  state; } ;
struct cx18_videobuf_buffer {TYPE_1__ vb; } ;
struct cx18_stream {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  VIDEOBUF_NEEDS_INIT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (struct videobuf_queue*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct videobuf_queue *q,
	struct cx18_stream *s, struct cx18_videobuf_buffer *buf)
{
	FUNC1(q, &buf->vb, 0, 0);
	FUNC0(&buf->vb);
	buf->vb.state = VIDEOBUF_NEEDS_INIT;
}