
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2400m_pld {int val; } ;


 size_t I2400M_PLD_SIZE_MASK ;
 size_t le32_to_cpu (int ) ;

__attribute__((used)) static inline
size_t i2400m_pld_size(const struct i2400m_pld *pld)
{
 return I2400M_PLD_SIZE_MASK & le32_to_cpu(pld->val);
}
