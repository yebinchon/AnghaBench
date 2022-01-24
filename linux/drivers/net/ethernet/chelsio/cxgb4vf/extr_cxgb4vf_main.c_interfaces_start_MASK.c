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
struct seq_file {int /*<<< orphan*/  private; } ;
typedef  scalar_t__ loff_t ;

/* Variables and functions */
 void* SEQ_START_TOKEN ; 
 void* FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void *FUNC1(struct seq_file *seq, loff_t *pos)
{
	return *pos
		? FUNC0(seq->private, *pos)
		: SEQ_START_TOKEN;
}