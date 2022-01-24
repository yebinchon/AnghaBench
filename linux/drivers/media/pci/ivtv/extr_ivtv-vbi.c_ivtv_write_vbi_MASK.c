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
struct vbi_cc {int /*<<< orphan*/  even; int /*<<< orphan*/  odd; } ;
struct v4l2_sliced_vbi_data {int dummy; } ;
struct ivtv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ivtv*,struct vbi_cc*) ; 
 int /*<<< orphan*/  FUNC1 (struct ivtv*,struct v4l2_sliced_vbi_data const*,struct vbi_cc*,int*) ; 

__attribute__((used)) static void FUNC2(struct ivtv *itv,
			   const struct v4l2_sliced_vbi_data *sliced,
			   size_t cnt)
{
	struct vbi_cc cc = { .odd = { 0x80, 0x80 }, .even = { 0x80, 0x80 } };
	int found_cc = 0;
	size_t i;

	for (i = 0; i < cnt; i++)
		FUNC1(itv, sliced + i, &cc, &found_cc);

	if (found_cc)
		FUNC0(itv, &cc);
}