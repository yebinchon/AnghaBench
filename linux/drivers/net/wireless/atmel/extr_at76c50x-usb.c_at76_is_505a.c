
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum board_type { ____Placeholder_board_type } board_type ;


 int BOARD_505A ;
 int BOARD_505AMX ;

__attribute__((used)) static inline int at76_is_505a(enum board_type board)
{
 return (board == BOARD_505A || board == BOARD_505AMX);
}
