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
struct niu {int flags; } ;

/* Variables and functions */
 int NIU_FLAGS_XMAC ; 
 int /*<<< orphan*/  FUNC0 (struct niu*) ; 
 int /*<<< orphan*/  FUNC1 (struct niu*) ; 

__attribute__((used)) static void FUNC2(struct niu *np)
{
	if (np->flags & NIU_FLAGS_XMAC)
		FUNC1(np);
	else
		FUNC0(np);
}