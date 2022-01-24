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
struct board_info {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct board_info const*) ; 
 struct board_info const* t1_board ; 

const struct board_info *FUNC1(unsigned int board_id)
{
	return board_id < FUNC0(t1_board) ? &t1_board[board_id] : NULL;
}