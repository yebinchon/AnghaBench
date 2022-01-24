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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,unsigned short,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned short,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void
FUNC2(char *payload, unsigned short dscp, u8 prio)
{
	FUNC0(payload, dscp, 1);
	FUNC1(payload, dscp, prio);
}