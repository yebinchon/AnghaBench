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
typedef  struct gsc_fmt const gsc_fmt ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * gsc_formats ; 

const struct gsc_fmt *FUNC1(int index)
{
	if (index >= FUNC0(gsc_formats))
		return NULL;

	return (struct gsc_fmt *)&gsc_formats[index];
}