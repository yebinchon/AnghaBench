
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct TYPE_2__ {int bytes; } ;
struct mlxsw_item {int element_size; int offset; TYPE_1__ size; int name; } ;


 int BITS_PER_BYTE ;
 int BUG () ;
 int BUG_ON (int) ;
 int pr_err (char*,int ,int,int) ;

__attribute__((used)) static inline u16
__mlxsw_item_bit_array_offset(const struct mlxsw_item *item,
         u16 index, u8 *shift)
{
 u16 max_index, be_index;
 u16 offset;
 u8 in_byte_index;

 BUG_ON(index && !item->element_size);
 if (item->offset % sizeof(u32) != 0 ||
     BITS_PER_BYTE % item->element_size != 0) {
  pr_err("mlxsw: item bug (name=%s,offset=%x,element_size=%x)\n",
         item->name, item->offset, item->element_size);
  BUG();
 }

 max_index = (item->size.bytes << 3) / item->element_size - 1;
 be_index = max_index - index;
 offset = be_index * item->element_size >> 3;
 in_byte_index = index % (BITS_PER_BYTE / item->element_size);
 *shift = in_byte_index * item->element_size;

 return item->offset + offset;
}
