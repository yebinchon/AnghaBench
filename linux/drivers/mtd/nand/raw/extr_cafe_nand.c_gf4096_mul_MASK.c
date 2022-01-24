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
typedef  int u8 ;
typedef  int u16 ;

/* Variables and functions */
 int FUNC0 (int,int) ; 

__attribute__((used)) static u16 FUNC1(u16 a, u16 b)
{
	u8 ah, al, bh, bl, ch, cl;

	ah = a >> 6;
	al = a & 0x3f;
	bh = b >> 6;
	bl = b & 0x3f;

	ch = FUNC0(ah ^ al, bh ^ bl) ^ FUNC0(al, bl);
	cl = FUNC0(FUNC0(ah, bh), 0x21) ^ FUNC0(al, bl);

	return (ch << 6) ^ cl;
}