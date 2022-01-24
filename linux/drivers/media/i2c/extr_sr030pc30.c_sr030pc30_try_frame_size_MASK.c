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
struct sr030pc30_frmsize {scalar_t__ height; scalar_t__ width; } ;

/* Variables and functions */
 int FUNC0 (struct sr030pc30_frmsize*) ; 
 int EINVAL ; 
 int FUNC1 (scalar_t__) ; 
 struct sr030pc30_frmsize* sr030pc30_sizes ; 

__attribute__((used)) static int FUNC2(struct v4l2_mbus_framefmt *mf)
{
	unsigned int min_err = ~0;
	int i = FUNC0(sr030pc30_sizes);
	const struct sr030pc30_frmsize *fsize = &sr030pc30_sizes[0],
					*match = NULL;
	while (i--) {
		int err = FUNC1(fsize->width - mf->width)
				+ FUNC1(fsize->height - mf->height);
		if (err < min_err) {
			min_err = err;
			match = fsize;
		}
		fsize++;
	}
	if (match) {
		mf->width  = match->width;
		mf->height = match->height;
		return 0;
	}
	return -EINVAL;
}