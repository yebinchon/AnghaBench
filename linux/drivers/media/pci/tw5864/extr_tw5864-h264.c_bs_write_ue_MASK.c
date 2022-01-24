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
typedef  scalar_t__ u32 ;
struct bs {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bs*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct bs*,int) ; 
 int FUNC2 (scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct bs *s, u32 val)
{
	if (val == 0) {
		FUNC1(s, 1);
	} else {
		val++;
		FUNC0(s, 2 * FUNC2(val) - 1, val);
	}
}