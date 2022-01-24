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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static u32 *FUNC1(u32 *msg, u16 attr_id)
{
	u32 *attr;

	/* verify pointer is not NULL */
	if (!msg)
		return NULL;

	attr = &msg[FUNC0(*msg)];

	attr[0] = attr_id;

	/* return pointer to nest header */
	return attr;
}