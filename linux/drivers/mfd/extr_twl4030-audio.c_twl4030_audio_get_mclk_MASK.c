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
struct twl4030_audio {unsigned int audio_mclk; } ;

/* Variables and functions */
 struct twl4030_audio* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  twl4030_audio_dev ; 

unsigned int FUNC1(void)
{
	struct twl4030_audio *audio = FUNC0(twl4030_audio_dev);

	return audio->audio_mclk;
}