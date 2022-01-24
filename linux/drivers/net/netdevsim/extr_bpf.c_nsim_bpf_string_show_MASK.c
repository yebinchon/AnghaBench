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
struct seq_file {char** private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct seq_file*,char*,char const*) ; 

__attribute__((used)) static int FUNC1(struct seq_file *file, void *data)
{
	const char **str = file->private;

	if (*str)
		FUNC0(file, "%s\n", *str);

	return 0;
}