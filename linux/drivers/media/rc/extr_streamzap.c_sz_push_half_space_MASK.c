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
struct streamzap_ir {int dummy; } ;

/* Variables and functions */
 unsigned long SZ_SPACE_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct streamzap_ir*,unsigned long) ; 

__attribute__((used)) static void FUNC1(struct streamzap_ir *sz,
			       unsigned long value)
{
	FUNC0(sz, value & SZ_SPACE_MASK);
}