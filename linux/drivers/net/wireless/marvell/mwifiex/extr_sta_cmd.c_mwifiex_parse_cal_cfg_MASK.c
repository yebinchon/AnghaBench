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
typedef  char u8 ;
typedef  int u32 ;

/* Variables and functions */
 scalar_t__ FUNC0 (char) ; 
 scalar_t__ FUNC1 (char) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static u32 FUNC3(u8 *src, size_t len, u8 *dst)
{
	u8 *s = src, *d = dst;

	while (s - src < len) {
		if (*s && (FUNC0(*s) || *s == '\t')) {
			s++;
			continue;
		}
		if (FUNC1(*s)) {
			*d++ = FUNC2(s, NULL, 16);
			s += 2;
		} else {
			s++;
		}
	}

	return d - dst;
}