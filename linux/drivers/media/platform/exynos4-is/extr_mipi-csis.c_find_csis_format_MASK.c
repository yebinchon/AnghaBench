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
struct v4l2_mbus_framefmt {scalar_t__ code; } ;
struct csis_pix_format {scalar_t__ code; } ;

/* Variables and functions */
 int FUNC0 (struct csis_pix_format const*) ; 
 struct csis_pix_format const* s5pcsis_formats ; 

__attribute__((used)) static const struct csis_pix_format *FUNC1(
	struct v4l2_mbus_framefmt *mf)
{
	int i;

	for (i = 0; i < FUNC0(s5pcsis_formats); i++)
		if (mf->code == s5pcsis_formats[i].code)
			return &s5pcsis_formats[i];
	return NULL;
}