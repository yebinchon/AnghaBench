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
struct mm_struct {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  current ; 
 struct mm_struct* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ scif_ulimit_check ; 

__attribute__((used)) static inline struct mm_struct *FUNC1(void)
{
	if (scif_ulimit_check)
		return FUNC0(current);
	return NULL;
}