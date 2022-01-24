#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  sizeimage; int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct TYPE_4__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct aspeed_video {int /*<<< orphan*/  max_compressed_size; TYPE_1__ pix_fmt; TYPE_2__ active_timings; TYPE_2__ detected_timings; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct aspeed_video*) ; 
 int /*<<< orphan*/  FUNC1 (struct aspeed_video*) ; 
 int /*<<< orphan*/  FUNC2 (struct aspeed_video*) ; 
 int /*<<< orphan*/  FUNC3 (struct aspeed_video*) ; 

__attribute__((used)) static void FUNC4(struct aspeed_video *video)
{
	FUNC2(video);

	FUNC1(video);

	/* Resolution set to 640x480 if no signal found */
	FUNC0(video);

	/* Set timings since the device is being opened for the first time */
	video->active_timings = video->detected_timings;
	FUNC3(video);

	video->pix_fmt.width = video->active_timings.width;
	video->pix_fmt.height = video->active_timings.height;
	video->pix_fmt.sizeimage = video->max_compressed_size;
}