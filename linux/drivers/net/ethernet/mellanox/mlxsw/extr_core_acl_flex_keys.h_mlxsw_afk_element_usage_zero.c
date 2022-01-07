
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_afk_element_usage {int usage; } ;


 int MLXSW_AFK_ELEMENT_MAX ;
 int bitmap_zero (int ,int ) ;

__attribute__((used)) static inline void
mlxsw_afk_element_usage_zero(struct mlxsw_afk_element_usage *elusage)
{
 bitmap_zero(elusage->usage, MLXSW_AFK_ELEMENT_MAX);
}
