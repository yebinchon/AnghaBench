
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct board_info {int dummy; } ;


 unsigned int ARRAY_SIZE (struct board_info const*) ;
 struct board_info const* t1_board ;

const struct board_info *t1_get_board_info(unsigned int board_id)
{
 return board_id < ARRAY_SIZE(t1_board) ? &t1_board[board_id] : ((void*)0);
}
