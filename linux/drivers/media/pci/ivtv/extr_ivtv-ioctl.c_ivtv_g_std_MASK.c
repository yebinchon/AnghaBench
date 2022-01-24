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
typedef  int /*<<< orphan*/  v4l2_std_id ;
struct ivtv {int /*<<< orphan*/  std; } ;
struct file {int dummy; } ;
struct TYPE_2__ {struct ivtv* itv; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (void*) ; 

__attribute__((used)) static int FUNC1(struct file *file, void *fh, v4l2_std_id *std)
{
	struct ivtv *itv = FUNC0(fh)->itv;

	*std = itv->std;
	return 0;
}