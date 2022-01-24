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
typedef  scalar_t__ u64 ;
struct seq_file {int dummy; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  STRING_UNITS_2 ; 
 int /*<<< orphan*/  FUNC0 (struct seq_file*,char*,char const*,unsigned int,unsigned int,char*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int,int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void FUNC2(struct seq_file *seq, const char *name,
			    unsigned int from, unsigned int to)
{
	char buf[40];

	FUNC1((u64)to - from + 1, 1, STRING_UNITS_2, buf,
			sizeof(buf));
	FUNC0(seq, "%-15s %#x-%#x [%s]\n", name, from, to, buf);
}