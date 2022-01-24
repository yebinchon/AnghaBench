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
struct bs {int bits_left; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bs*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct bs*,int) ; 

__attribute__((used)) static void FUNC2(struct bs *s)
{
	FUNC1(s, 1);
	if (s->bits_left != 8)
		FUNC0(s, s->bits_left, 0x00);
}