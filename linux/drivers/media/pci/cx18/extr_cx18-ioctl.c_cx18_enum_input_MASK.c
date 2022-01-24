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
struct v4l2_input {int /*<<< orphan*/  index; } ;
struct file {int dummy; } ;
struct cx18 {int dummy; } ;
struct TYPE_2__ {struct cx18* cx; } ;

/* Variables and functions */
 int FUNC0 (struct cx18*,int /*<<< orphan*/ ,struct v4l2_input*) ; 
 TYPE_1__* FUNC1 (void*) ; 

__attribute__((used)) static int FUNC2(struct file *file, void *fh, struct v4l2_input *vin)
{
	struct cx18 *cx = FUNC1(fh)->cx;

	/* set it to defaults from our table */
	return FUNC0(cx, vin->index, vin);
}