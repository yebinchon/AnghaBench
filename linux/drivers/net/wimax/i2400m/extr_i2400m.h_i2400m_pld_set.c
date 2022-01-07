
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2400m_pld {int val; } ;
typedef enum i2400m_pt { ____Placeholder_i2400m_pt } i2400m_pt ;


 size_t I2400M_PLD_SIZE_MASK ;
 int I2400M_PLD_TYPE_MASK ;
 int I2400M_PLD_TYPE_SHIFT ;
 int cpu_to_le32 (int) ;

__attribute__((used)) static inline
void i2400m_pld_set(struct i2400m_pld *pld, size_t size,
      enum i2400m_pt type)
{
 pld->val = cpu_to_le32(
  ((type << I2400M_PLD_TYPE_SHIFT) & I2400M_PLD_TYPE_MASK)
  | (size & I2400M_PLD_SIZE_MASK));
}
