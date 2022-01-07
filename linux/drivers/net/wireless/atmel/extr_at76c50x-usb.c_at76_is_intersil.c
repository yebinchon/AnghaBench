
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum board_type { ____Placeholder_board_type } board_type ;


 int BOARD_503_ISL3861 ;
 int BOARD_503_ISL3863 ;

__attribute__((used)) static inline int at76_is_intersil(enum board_type board)
{
 return (board == BOARD_503_ISL3861 || board == BOARD_503_ISL3863);
}
