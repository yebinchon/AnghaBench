
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_item {int dummy; } ;


 unsigned int __mlxsw_item_offset (struct mlxsw_item const*,unsigned short,int) ;

__attribute__((used)) static inline char *__mlxsw_item_data(char *buf, const struct mlxsw_item *item,
          unsigned short index)
{
 unsigned int offset = __mlxsw_item_offset(item, index, sizeof(char));

 return &buf[offset];
}
