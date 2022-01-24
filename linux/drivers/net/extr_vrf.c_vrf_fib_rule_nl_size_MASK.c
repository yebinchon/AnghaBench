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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct fib_rule_hdr {int dummy; } ;

/* Variables and functions */
 size_t FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 

__attribute__((used)) static inline size_t FUNC2(void)
{
	size_t sz;

	sz  = FUNC0(sizeof(struct fib_rule_hdr));
	sz += FUNC1(sizeof(u8));	/* FRA_L3MDEV */
	sz += FUNC1(sizeof(u32));	/* FRA_PRIORITY */
	sz += FUNC1(sizeof(u8));       /* FRA_PROTOCOL */

	return sz;
}