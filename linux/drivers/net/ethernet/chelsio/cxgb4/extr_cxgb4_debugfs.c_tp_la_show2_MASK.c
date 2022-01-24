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
typedef  unsigned long long u64 ;
struct seq_file {int dummy; } ;

/* Variables and functions */
 int TPLA_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct seq_file*,unsigned long long const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char) ; 
 int /*<<< orphan*/  tp_la0 ; 

__attribute__((used)) static int FUNC2(struct seq_file *seq, void *v, int idx)
{
	const u64 *p = v;

	if (idx)
		FUNC1(seq, '\n');
	FUNC0(seq, p[0], tp_la0);
	if (idx < (TPLA_SIZE / 2 - 1) || p[1] != ~0ULL)
		FUNC0(seq, p[1], tp_la0);
	return 0;
}