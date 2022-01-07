
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2400m_pld {int val; } ;
typedef enum i2400m_pt { ____Placeholder_i2400m_pt } i2400m_pt ;


 int I2400M_PLD_TYPE_MASK ;
 int I2400M_PLD_TYPE_SHIFT ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static inline
enum i2400m_pt i2400m_pld_type(const struct i2400m_pld *pld)
{
 return (I2400M_PLD_TYPE_MASK & le32_to_cpu(pld->val))
  >> I2400M_PLD_TYPE_SHIFT;
}
