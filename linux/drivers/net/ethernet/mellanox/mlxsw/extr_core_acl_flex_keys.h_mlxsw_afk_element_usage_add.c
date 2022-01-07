
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_afk_element_usage {int usage; } ;
typedef enum mlxsw_afk_element { ____Placeholder_mlxsw_afk_element } mlxsw_afk_element ;


 int __set_bit (int,int ) ;

__attribute__((used)) static inline void
mlxsw_afk_element_usage_add(struct mlxsw_afk_element_usage *elusage,
       enum mlxsw_afk_element element)
{
 __set_bit(element, elusage->usage);
}
