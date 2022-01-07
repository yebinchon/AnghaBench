
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_afk_element_usage {int usage; } ;


 int MLXSW_AFK_ELEMENT_MAX ;
 scalar_t__ test_bit (int,int ) ;

__attribute__((used)) static inline bool
mlxsw_afk_element_usage_subset(struct mlxsw_afk_element_usage *elusage_small,
          struct mlxsw_afk_element_usage *elusage_big)
{
 int i;

 for (i = 0; i < MLXSW_AFK_ELEMENT_MAX; i++)
  if (test_bit(i, elusage_small->usage) &&
      !test_bit(i, elusage_big->usage))
   return 0;
 return 1;
}
