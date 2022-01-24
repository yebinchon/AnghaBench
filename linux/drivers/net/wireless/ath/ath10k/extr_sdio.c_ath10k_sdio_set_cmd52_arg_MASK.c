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
typedef  unsigned char u8 ;
typedef  int u32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,unsigned char) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 

__attribute__((used)) static inline void FUNC3(u32 *arg, u8 write, u8 raw,
					     unsigned int address,
					     unsigned char val)
{
	*arg = FUNC1(FUNC0(31), write) |
	       FUNC1(FUNC0(27), raw) |
	       FUNC1(FUNC0(26), 1) |
	       FUNC1(FUNC2(25, 9), address) |
	       FUNC1(FUNC0(8), 1) |
	       FUNC1(FUNC2(7, 0), val);
}