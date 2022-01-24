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
struct seq_file {int /*<<< orphan*/  file; } ;
struct ap_data {int /*<<< orphan*/  sta_list; } ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 struct ap_data* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (void*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void *FUNC3(struct seq_file *m, void *v, loff_t *_pos)
{
	struct ap_data *ap = FUNC0(FUNC1(m->file));
	return FUNC2(v, &ap->sta_list, _pos);
}