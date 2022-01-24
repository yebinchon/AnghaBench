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
struct v4l2_audioout {int /*<<< orphan*/  index; } ;
struct ivtv {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_2__ {struct ivtv* itv; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (void*) ; 
 int FUNC1 (struct ivtv*,int /*<<< orphan*/ ,struct v4l2_audioout*) ; 

__attribute__((used)) static int FUNC2(struct file *file, void *fh, struct v4l2_audioout *vin)
{
	struct ivtv *itv = FUNC0(fh)->itv;

	vin->index = 0;
	return FUNC1(itv, vin->index, vin);
}