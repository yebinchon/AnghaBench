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
struct bttv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int const) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static void FUNC2(struct bttv *btv, unsigned int input)
{
	static const u8 muxgpio[] = { 0x3, 0x1, 0x2, 0x4, 0xf, 0x7, 0xe, 0x0,
				      0xd, 0xb, 0xc, 0x6, 0x9, 0x5, 0x8, 0xa };

	FUNC0(0x07f, muxgpio[input]);

	/* reset all connections */
	FUNC0(0x200,0x200);
	FUNC1(1);
	FUNC0(0x200,0x000);
	FUNC1(1);

	/* create a new connection */
	FUNC0(0x480,0x480);
	FUNC1(1);
	FUNC0(0x480,0x080);
	FUNC1(1);
}