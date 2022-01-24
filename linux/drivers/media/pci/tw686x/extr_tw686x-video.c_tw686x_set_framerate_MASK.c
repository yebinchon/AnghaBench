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
struct tw686x_video_channel {size_t ch; int /*<<< orphan*/  video_standard; int /*<<< orphan*/  fps; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * VIDEO_FIELD_CTRL ; 
 int /*<<< orphan*/ * fps_map ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct tw686x_video_channel *vc,
				 unsigned int fps)
{
	unsigned int i;

	i = FUNC2(fps, FUNC0(vc->video_standard));
	FUNC1(vc->dev, VIDEO_FIELD_CTRL[vc->ch], fps_map[i]);
	vc->fps = FUNC3(i, FUNC0(vc->video_standard));
}