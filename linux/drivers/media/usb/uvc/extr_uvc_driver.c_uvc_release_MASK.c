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
struct video_device {int dummy; } ;
struct uvc_streaming {struct uvc_device* dev; } ;
struct uvc_device {int /*<<< orphan*/  ref; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  uvc_delete ; 
 struct uvc_streaming* FUNC1 (struct video_device*) ; 

__attribute__((used)) static void FUNC2(struct video_device *vdev)
{
	struct uvc_streaming *stream = FUNC1(vdev);
	struct uvc_device *dev = stream->dev;

	FUNC0(&dev->ref, uvc_delete);
}