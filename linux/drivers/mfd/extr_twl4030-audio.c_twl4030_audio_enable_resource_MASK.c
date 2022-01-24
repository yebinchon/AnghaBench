#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct twl4030_audio {int /*<<< orphan*/  mutex; TYPE_1__* resource; } ;
typedef  enum twl4030_audio_res { ____Placeholder_twl4030_audio_res } twl4030_audio_res ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  request_count; } ;

/* Variables and functions */
 int EINVAL ; 
 int TWL4030_AUDIO_RES_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct twl4030_audio* FUNC3 (TYPE_2__*) ; 
 TYPE_2__* twl4030_audio_dev ; 
 int FUNC4 (int) ; 
 int FUNC5 (int,int) ; 

int FUNC6(enum twl4030_audio_res id)
{
	struct twl4030_audio *audio = FUNC3(twl4030_audio_dev);
	int val;

	if (id >= TWL4030_AUDIO_RES_MAX) {
		FUNC0(&twl4030_audio_dev->dev,
				"Invalid resource ID (%u)\n", id);
		return -EINVAL;
	}

	FUNC1(&audio->mutex);
	if (!audio->resource[id].request_count)
		/* Resource was disabled, enable it */
		val = FUNC5(id, 1);
	else
		val = FUNC4(id);

	audio->resource[id].request_count++;
	FUNC2(&audio->mutex);

	return val;
}