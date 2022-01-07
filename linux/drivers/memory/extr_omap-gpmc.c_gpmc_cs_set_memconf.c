
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int EINVAL ;
 int GPMC_CHUNK_SHIFT ;
 int GPMC_CONFIG7_BASEADDRESS_MASK ;
 int GPMC_CONFIG7_CSVALID ;
 int GPMC_CONFIG7_MASK ;
 int GPMC_CONFIG7_MASKADDRESS_MASK ;
 int GPMC_CONFIG7_MASKADDRESS_OFFSET ;
 int GPMC_CS_CONFIG7 ;
 int GPMC_SECTION_SHIFT ;
 int gpmc_cs_read_reg (int,int ) ;
 int gpmc_cs_write_reg (int,int ,int) ;

__attribute__((used)) static int gpmc_cs_set_memconf(int cs, u32 base, u32 size)
{
 u32 l;
 u32 mask;





 if (base & (size - 1))
  return -EINVAL;

 base >>= GPMC_CHUNK_SHIFT;
 mask = (1 << GPMC_SECTION_SHIFT) - size;
 mask >>= GPMC_CHUNK_SHIFT;
 mask <<= GPMC_CONFIG7_MASKADDRESS_OFFSET;

 l = gpmc_cs_read_reg(cs, GPMC_CS_CONFIG7);
 l &= ~GPMC_CONFIG7_MASK;
 l |= base & GPMC_CONFIG7_BASEADDRESS_MASK;
 l |= mask & GPMC_CONFIG7_MASKADDRESS_MASK;
 l |= GPMC_CONFIG7_CSVALID;
 gpmc_cs_write_reg(cs, GPMC_CS_CONFIG7, l);

 return 0;
}
