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
struct v4l2_audio {int /*<<< orphan*/  capability; int /*<<< orphan*/  name; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  V4L2_AUDCAP_STEREO ; 
 int /*<<< orphan*/  FUNC0 (struct v4l2_audio*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC2(struct file *file, void *priv,
		struct v4l2_audio *audio)
{
	FUNC0(audio, 0, sizeof(*audio));
	FUNC1(audio->name, "Radio", sizeof(audio->name));
	audio->capability = V4L2_AUDCAP_STEREO;

	return 0;
}