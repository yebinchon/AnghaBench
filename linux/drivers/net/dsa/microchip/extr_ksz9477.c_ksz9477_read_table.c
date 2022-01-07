
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ksz_device {int dummy; } ;


 int REG_SW_ALU_VAL_A ;
 int REG_SW_ALU_VAL_B ;
 int REG_SW_ALU_VAL_C ;
 int REG_SW_ALU_VAL_D ;
 int ksz_read32 (struct ksz_device*,int ,int *) ;

__attribute__((used)) static void ksz9477_read_table(struct ksz_device *dev, u32 *table)
{
 ksz_read32(dev, REG_SW_ALU_VAL_A, &table[0]);
 ksz_read32(dev, REG_SW_ALU_VAL_B, &table[1]);
 ksz_read32(dev, REG_SW_ALU_VAL_C, &table[2]);
 ksz_read32(dev, REG_SW_ALU_VAL_D, &table[3]);
}
