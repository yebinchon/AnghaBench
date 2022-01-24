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
struct ispstat_buffer {int dummy; } ;
struct ispstat {int dummy; } ;

/* Variables and functions */
 struct ispstat_buffer* FUNC0 (struct ispstat*,int) ; 

__attribute__((used)) static inline struct ispstat_buffer *
FUNC1(struct ispstat *stat)
{
	return FUNC0(stat, 1);
}