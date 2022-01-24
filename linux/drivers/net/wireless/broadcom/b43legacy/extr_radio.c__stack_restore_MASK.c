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
typedef  int u32 ;
typedef  int u16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t B43legacy_INTERFSTACK_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static u16 FUNC2(u32 *stackptr,
			  u8 id, u16 offset)
{
	size_t i;

	FUNC1(!((offset & 0xE000) == 0x0000));
	FUNC1(!((id & 0xF8) == 0x00));
	for (i = 0; i < B43legacy_INTERFSTACK_SIZE; i++, stackptr++) {
		if ((*stackptr & 0x00001FFF) != offset)
			continue;
		if (((*stackptr & 0x00007000) >> 13) != id)
			continue;
		return ((*stackptr & 0xFFFF0000) >> 16);
	}
	FUNC0(1);

	return 0;
}