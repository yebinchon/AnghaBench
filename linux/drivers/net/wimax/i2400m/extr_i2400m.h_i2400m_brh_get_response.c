
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2400m_bootrom_header {int command; } ;


 int I2400M_BRH_RESPONSE_MASK ;
 int I2400M_BRH_RESPONSE_SHIFT ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static inline
unsigned i2400m_brh_get_response(const struct i2400m_bootrom_header *hdr)
{
 return (le32_to_cpu(hdr->command) & I2400M_BRH_RESPONSE_MASK)
  >> I2400M_BRH_RESPONSE_SHIFT;
}
