
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;


 unsigned int DTD_DESC_START_MASK ;
 int DTD_DROP_DATA_SHIFT ;
 int DTD_WRITE_DESC_SHIFT ;

__attribute__((used)) static inline u32 dtd_desc_write_addr(unsigned int addr, bool write_desc,
   bool drop_data, bool use_desc)
{
 return (addr & DTD_DESC_START_MASK) |
  (write_desc << DTD_WRITE_DESC_SHIFT) |
  (drop_data << DTD_DROP_DATA_SHIFT) |
  use_desc;
}
