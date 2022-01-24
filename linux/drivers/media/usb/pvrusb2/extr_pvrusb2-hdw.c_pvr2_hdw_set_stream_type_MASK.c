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
struct pvr2_hdw {int desired_stream_type; int /*<<< orphan*/  big_lock; scalar_t__ state_pipeline_config; } ;
typedef  enum pvr2_config { ____Placeholder_pvr2_config } pvr2_config ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pvr2_hdw*) ; 
 int FUNC3 (struct pvr2_hdw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,scalar_t__) ; 

int FUNC5(struct pvr2_hdw *hdw,enum pvr2_config config)
{
	int fl;
	FUNC1(hdw->big_lock);
	if ((fl = (hdw->desired_stream_type != config)) != 0) {
		hdw->desired_stream_type = config;
		hdw->state_pipeline_config = 0;
		FUNC4("state_pipeline_config",
			    hdw->state_pipeline_config);
		FUNC2(hdw);
	}
	FUNC0(hdw->big_lock);
	if (fl) return 0;
	return FUNC3(hdw,0);
}