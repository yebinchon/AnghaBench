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
struct seq_file {int dummy; } ;
typedef  char const* s8 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct seq_file*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char*) ; 

void FUNC2(struct seq_file *file, const char *str,
			 s8 *val, int len)
{
	int i;

	FUNC0(file, "%10s:", str);
	for (i = 0; i < len; i++)
		FUNC0(file, " %2d", val[i]);
	FUNC1(file, "\n");
}