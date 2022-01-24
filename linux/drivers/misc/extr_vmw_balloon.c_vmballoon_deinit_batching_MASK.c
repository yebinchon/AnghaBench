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
struct vmballoon {int batch_max_pages; int /*<<< orphan*/ * batch_page; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vmw_balloon_batching ; 

__attribute__((used)) static void FUNC2(struct vmballoon *b)
{
	FUNC0((unsigned long)b->batch_page);
	b->batch_page = NULL;
	FUNC1(&vmw_balloon_batching);
	b->batch_max_pages = 1;
}