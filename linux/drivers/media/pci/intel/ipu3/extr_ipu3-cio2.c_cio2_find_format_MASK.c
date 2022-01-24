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
typedef  scalar_t__ u32 ;
struct ipu3_cio2_fmt {scalar_t__ const fourcc; scalar_t__ const mbus_code; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct ipu3_cio2_fmt const*) ; 
 struct ipu3_cio2_fmt const* formats ; 

__attribute__((used)) static const struct ipu3_cio2_fmt *FUNC1(const u32 *pixelformat,
						    const u32 *mbus_code)
{
	unsigned int i;

	for (i = 0; i < FUNC0(formats); i++) {
		if (pixelformat && *pixelformat != formats[i].fourcc)
			continue;
		if (mbus_code && *mbus_code != formats[i].mbus_code)
			continue;

		return &formats[i];
	}

	return NULL;
}