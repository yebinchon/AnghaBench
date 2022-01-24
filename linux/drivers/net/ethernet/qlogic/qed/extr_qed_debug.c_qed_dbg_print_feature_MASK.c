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
typedef  scalar_t__ u32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(u8 *p_text_buf, u32 text_size)
{
	u32 i, precision = 80;

	if (!p_text_buf)
		return;

	FUNC1("\n%.*s", precision, p_text_buf);
	for (i = precision; i < text_size; i += precision)
		FUNC0("%.*s", precision, p_text_buf + i);
	FUNC0("\n");
}