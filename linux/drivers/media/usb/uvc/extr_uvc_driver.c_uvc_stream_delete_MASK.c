#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {struct uvc_streaming* bmaControls; } ;
struct uvc_streaming {TYPE_1__ header; struct uvc_streaming* format; int /*<<< orphan*/  intf; int /*<<< orphan*/  mutex; scalar_t__ async_wq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct uvc_streaming*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct uvc_streaming *stream)
{
	if (stream->async_wq)
		FUNC0(stream->async_wq);

	FUNC2(&stream->mutex);

	FUNC3(stream->intf);

	FUNC1(stream->format);
	FUNC1(stream->header.bmaControls);
	FUNC1(stream);
}