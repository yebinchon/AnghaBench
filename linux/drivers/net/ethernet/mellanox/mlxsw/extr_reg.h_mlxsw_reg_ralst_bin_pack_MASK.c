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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int) ; 

__attribute__((used)) static inline void FUNC2(char *payload, u8 bin_number,
					    u8 left_child_bin,
					    u8 right_child_bin)
{
	int bin_index = bin_number - 1;

	FUNC0(payload, bin_index, left_child_bin);
	FUNC1(payload, bin_index,
					    right_child_bin);
}