
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bytes; } ;
struct mlxsw_item {TYPE_1__ size; } ;


 unsigned int __mlxsw_item_offset (struct mlxsw_item const*,unsigned short,int) ;
 int memcpy (char*,char const*,int ) ;

__attribute__((used)) static inline void __mlxsw_item_memcpy_to(char *buf, const char *src,
       const struct mlxsw_item *item,
       unsigned short index)
{
 unsigned int offset = __mlxsw_item_offset(item, index, sizeof(char));

 memcpy(&buf[offset], src, item->size.bytes);
}
