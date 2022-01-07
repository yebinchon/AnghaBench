
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {scalar_t__ bits; } ;
struct mlxsw_item {int shift; scalar_t__ no_real_shift; TYPE_1__ size; } ;
typedef int __be64 ;


 int GENMASK_ULL (scalar_t__,int ) ;
 unsigned int __mlxsw_item_offset (struct mlxsw_item const*,unsigned short,int) ;
 int be64_to_cpu (int ) ;

__attribute__((used)) static inline u64 __mlxsw_item_get64(const char *buf,
         const struct mlxsw_item *item,
         unsigned short index)
{
 unsigned int offset = __mlxsw_item_offset(item, index, sizeof(u64));
 __be64 *b = (__be64 *) buf;
 u64 tmp;

 tmp = be64_to_cpu(b[offset]);
 tmp >>= item->shift;
 tmp &= GENMASK_ULL(item->size.bits - 1, 0);
 if (item->no_real_shift)
  tmp <<= item->shift;
 return tmp;
}
