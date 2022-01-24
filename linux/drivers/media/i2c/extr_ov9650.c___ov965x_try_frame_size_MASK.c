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
struct v4l2_mbus_framefmt {scalar_t__ height; scalar_t__ width; } ;
struct ov965x_framesize {scalar_t__ height; scalar_t__ width; } ;

/* Variables and functions */
 int FUNC0 (struct ov965x_framesize*) ; 
 unsigned int UINT_MAX ; 
 int FUNC1 (scalar_t__) ; 
 struct ov965x_framesize* ov965x_framesizes ; 

__attribute__((used)) static void FUNC2(struct v4l2_mbus_framefmt *mf,
				    const struct ov965x_framesize **size)
{
	const struct ov965x_framesize *fsize = &ov965x_framesizes[0],
		*match = NULL;
	int i = FUNC0(ov965x_framesizes);
	unsigned int min_err = UINT_MAX;

	while (i--) {
		int err = FUNC1(fsize->width - mf->width)
				+ FUNC1(fsize->height - mf->height);
		if (err < min_err) {
			min_err = err;
			match = fsize;
		}
		fsize++;
	}
	if (!match)
		match = &ov965x_framesizes[0];
	mf->width  = match->width;
	mf->height = match->height;
	if (size)
		*size = match;
}