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
typedef  int u32 ;
struct seq_file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct seq_file*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char) ; 

__attribute__((used)) static void FUNC2(struct seq_file *s, u32 val, char *name)
{
	FUNC0(s, "%s\t0x%08X\t", name, val);

	if (!val)
		goto done;

	FUNC0(s, "H: init=%d repeat=%d - ", val & 0x3FF, (val >> 12) & 7);
	val >>= 16;
	FUNC0(s, "V: init=%d repeat=%d", val & 0x3FF, (val >> 12) & 7);

done:
	FUNC1(s, '\n');
}