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
struct tw686x_format {unsigned int fourcc; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct tw686x_format const*) ; 
 struct tw686x_format const* formats ; 

__attribute__((used)) static const struct tw686x_format *FUNC1(unsigned int fourcc)
{
	unsigned int cnt;

	for (cnt = 0; cnt < FUNC0(formats); cnt++)
		if (formats[cnt].fourcc == fourcc)
			return &formats[cnt];
	return NULL;
}