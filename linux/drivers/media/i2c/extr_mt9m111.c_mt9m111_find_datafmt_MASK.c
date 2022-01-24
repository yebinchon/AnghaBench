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
struct mt9m111_datafmt {scalar_t__ code; } ;
struct mt9m111 {struct mt9m111_datafmt const* fmt; } ;

/* Variables and functions */
 int FUNC0 (struct mt9m111_datafmt const*) ; 
 struct mt9m111_datafmt const* mt9m111_colour_fmts ; 

__attribute__((used)) static const struct mt9m111_datafmt *FUNC1(struct mt9m111 *mt9m111,
						u32 code)
{
	int i;
	for (i = 0; i < FUNC0(mt9m111_colour_fmts); i++)
		if (mt9m111_colour_fmts[i].code == code)
			return mt9m111_colour_fmts + i;

	return mt9m111->fmt;
}