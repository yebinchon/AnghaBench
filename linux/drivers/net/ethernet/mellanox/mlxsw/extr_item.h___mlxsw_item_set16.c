
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {scalar_t__ bits; } ;
struct mlxsw_item {int shift; int no_real_shift; TYPE_1__ size; } ;
typedef int __be16 ;


 int GENMASK (scalar_t__,int ) ;
 unsigned int __mlxsw_item_offset (struct mlxsw_item const*,unsigned short,int) ;
 int be16_to_cpu (int ) ;
 int cpu_to_be16 (int) ;

__attribute__((used)) static inline void __mlxsw_item_set16(char *buf, const struct mlxsw_item *item,
          unsigned short index, u16 val)
{
 unsigned int offset = __mlxsw_item_offset(item, index,
        sizeof(u16));
 __be16 *b = (__be16 *) buf;
 u16 mask = GENMASK(item->size.bits - 1, 0) << item->shift;
 u16 tmp;

 if (!item->no_real_shift)
  val <<= item->shift;
 val &= mask;
 tmp = be16_to_cpu(b[offset]);
 tmp &= ~mask;
 tmp |= val;
 b[offset] = cpu_to_be16(tmp);
}
